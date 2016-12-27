/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-22 10:20:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_auth
-- ----------------------------
DROP TABLE IF EXISTS `tb_auth`;
CREATE TABLE `tb_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `op` varchar(45) DEFAULT NULL,
  `authgroup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `authgroup_id` (`authgroup_id`),
  CONSTRAINT `tb_auth_ibfk_1` FOREIGN KEY (`authgroup_id`) REFERENCES `tb_authgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_auth
-- ----------------------------
INSERT INTO `tb_auth` VALUES ('1', '增加商品', 'goods', 'add', '1');
INSERT INTO `tb_auth` VALUES ('2', '修改商品', 'goods', 'update', '1');
INSERT INTO `tb_auth` VALUES ('3', '查找商品', 'goods', 'find', '1');
INSERT INTO `tb_auth` VALUES ('4', '删除商品', 'goods', 'delete', '1');
INSERT INTO `tb_auth` VALUES ('5', '增加订单', 'order', 'add', '2');
INSERT INTO `tb_auth` VALUES ('6', '修改订单', 'order', 'update', '2');
INSERT INTO `tb_auth` VALUES ('7', '查找订单', 'order', 'find', '2');
INSERT INTO `tb_auth` VALUES ('8', '删除订单', 'order', 'delete', '2');
INSERT INTO `tb_auth` VALUES ('9', '设置', 'setting', 'delete', null);
INSERT INTO `tb_auth` VALUES ('10', '切换用户', 'emp', 'exit', null);
INSERT INTO `tb_auth` VALUES ('11', '退出', 'emp', 'exit', null);
INSERT INTO `tb_auth` VALUES ('17', '增加权限', 'auth', 'add', '4');
INSERT INTO `tb_auth` VALUES ('18', '修改权限', 'auth', 'update', '4');
INSERT INTO `tb_auth` VALUES ('19', '查找权限', 'auth', 'find', '4');
INSERT INTO `tb_auth` VALUES ('20', '删除权限', 'auth', 'delete', '4');
INSERT INTO `tb_auth` VALUES ('21', '增加用户', 'user', 'add', '3');
INSERT INTO `tb_auth` VALUES ('22', '修改用户', 'user', 'update', '3');
INSERT INTO `tb_auth` VALUES ('23', '查找用户', 'user', 'find', '3');
INSERT INTO `tb_auth` VALUES ('24', '删除用户', 'user', 'delete', '3');

-- ----------------------------
-- Table structure for tb_authgroup
-- ----------------------------
DROP TABLE IF EXISTS `tb_authgroup`;
CREATE TABLE `tb_authgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_authgroup
-- ----------------------------
INSERT INTO `tb_authgroup` VALUES ('1', '商品管理');
INSERT INTO `tb_authgroup` VALUES ('2', '订单管理');
INSERT INTO `tb_authgroup` VALUES ('3', '用户管理');
INSERT INTO `tb_authgroup` VALUES ('4', '权限管理');

-- ----------------------------
-- Table structure for tb_dept
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `deptno` int(2) NOT NULL AUTO_INCREMENT,
  `dname` varchar(14) DEFAULT NULL,
  `loc` varchar(13) DEFAULT NULL,
  `kouhao` varchar(25) DEFAULT NULL,
  `yusuan` int(11) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('10', 'ACCOUNTING', 'NEW YORK', '324', '230');
INSERT INTO `tb_dept` VALUES ('11', 'aaaa6', 'bbbb', '23414', '440');
INSERT INTO `tb_dept` VALUES ('20', 'asdf', 'abcdef', 'gfsda', '600');
INSERT INTO `tb_dept` VALUES ('30', '3423', '3423', 'fdas', '500');
INSERT INTO `tb_dept` VALUES ('33', 'abc324', '中国', 'vcxz', '800');
INSERT INTO `tb_dept` VALUES ('34', 'abcd', 'abcd', 'vczxdsaf', '700');
INSERT INTO `tb_dept` VALUES ('40', 'bb', 'bbbb', null, null);

-- ----------------------------
-- Table structure for tb_emp
-- ----------------------------
DROP TABLE IF EXISTS `tb_emp`;
CREATE TABLE `tb_emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_emp
-- ----------------------------
INSERT INTO `tb_emp` VALUES ('1', 'admin', 'admin');
INSERT INTO `tb_emp` VALUES ('2', 'zhangsan', '123456');

-- ----------------------------
-- Table structure for tb_emp_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_emp_role`;
CREATE TABLE `tb_emp_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`role_id`),
  KEY `empId` (`emp_id`),
  CONSTRAINT `tb_emp_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `tb_emp_role_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `tb_emp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_emp_role
-- ----------------------------
INSERT INTO `tb_emp_role` VALUES ('1', '1', '1');
INSERT INTO `tb_emp_role` VALUES ('2', '3', '2');
INSERT INTO `tb_emp_role` VALUES ('3', '2', '1');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '超级管理员');
INSERT INTO `tb_role` VALUES ('2', '临时管理员');
INSERT INTO `tb_role` VALUES ('3', '普通管理员');

-- ----------------------------
-- Table structure for tb_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_auth`;
CREATE TABLE `tb_role_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `auth_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `auth_id` (`auth_id`),
  CONSTRAINT `tb_role_auth_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `tb_role_auth_ibfk_2` FOREIGN KEY (`auth_id`) REFERENCES `tb_auth` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_auth
-- ----------------------------
INSERT INTO `tb_role_auth` VALUES ('1', '1', '9');
INSERT INTO `tb_role_auth` VALUES ('2', '2', '10');
INSERT INTO `tb_role_auth` VALUES ('3', '1', '11');

-- ----------------------------
-- Table structure for tb_role_authgroup
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_authgroup`;
CREATE TABLE `tb_role_authgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `authgroup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `authgroup_id` (`authgroup_id`),
  CONSTRAINT `tb_role_authgroup_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `tb_role_authgroup_ibfk_2` FOREIGN KEY (`authgroup_id`) REFERENCES `tb_authgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_authgroup
-- ----------------------------
INSERT INTO `tb_role_authgroup` VALUES ('1', '1', '1');
INSERT INTO `tb_role_authgroup` VALUES ('2', '1', '2');
INSERT INTO `tb_role_authgroup` VALUES ('3', '2', '3');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'aa', 'aa');
INSERT INTO `tb_user` VALUES ('2', 'marry', '123456');
INSERT INTO `tb_user` VALUES ('3', 'java', 'javacc');
INSERT INTO `tb_user` VALUES ('15', 'zhangsan', 'javacc');
INSERT INTO `tb_user` VALUES ('28', 'java', '123');
INSERT INTO `tb_user` VALUES ('29', 'java', '123444');
INSERT INTO `tb_user` VALUES ('30', 'ww', '1234');
INSERT INTO `tb_user` VALUES ('31', 'xiaoli', '123456');

-- ----------------------------
-- Procedure structure for proc_test1
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_test1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_test1`(IN var1 int , IN var2 int, OUT res int )
BEGIN
    set res = var1+var2;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_test2
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_test2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_test2`()
BEGIN
    SELECT empno,ename,job,sal from tb_emp where deptno = 20;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_test3
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_test3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_test3`()
BEGIN
    SELECT deptno,dname,loc from dept;
END
;;
DELIMITER ;
