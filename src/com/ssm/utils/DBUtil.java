package com.ssm.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	// 驱动程序名
	private static String driverClassName = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=UTF8";
	private static Connection conn = null;
	private static String username = "root";
	private static String password = "root";

	/**
	 * 构造函数初始化
	 * 
	 */
	static  {
		try {
			Class.forName(driverClassName);
			conn = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			System.out.println("获取数据库连接失败!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("获取数据库连接失败!");
			e.printStackTrace();
		}
	}

	/**
	 * 获取数据库连接
	 * 
	 * @return
	 */
	public static Connection getConnection() {
		if (conn != null) {
			return conn;
		} else {
			System.out.println("获取数据库连接失败!");
		}
		return conn;
	}

	/**
	 * 关闭数据库连接
	 */
	public static void close() {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("关闭数据库连接失败!");
			}
		}
	}
}
