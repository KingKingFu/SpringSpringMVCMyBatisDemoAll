Spring SpringMVC myBatis整合

1.创建项目，拷贝jar文件
*********************************************************************************************************************************
2.拷贝自动生成的xml文件 resource文件夹
generatorConfig.xml（修改内容）
    1>.路径：绝对路径
    2>.包名：com.ssm.xx
    3>.表名：生成实体类去除 tb_
    4>.指定生成的实体类字段的类型
        <!--&lt;!&ndash;可以将对应数据库的表中字段类型进行转换 如下：将BigDecimal转为Float&ndash;&gt;-->
            <!--<columnOverride column="comm" javaType="java.lang.Float" />-->
            <!--<columnOverride column="sal" javaType="java.lang.Float" />-->
*********************************************************************************************************************************
3.通过命令生成实体类 dao mapper.xml文件（SQL语句）
    将myBatis 的mybatis-generator-core-1.3.5.jar放到generatorConfig.xml同一目录下
    打开自动生成文件位置，在空白处按住shift右键出现命令行界面（需要配好javac命令），执行以下命令：
     java -jar mybatis-generator-core-1.3.5.jar -configfile generatorConfig.xml -overwrite
     在同一路径下../config无需写
     java -jar mybatis-generator-core-1.3.5.jar -configfile ../config/generatorConfig.xml -overwrite
*********************************************************************************************************************************
4.整合spring（applicationContext.xml）
    1>.为web项目添加spring支持
        1.在ressource目录下创建applicationContext.xml
        2.在web.xml中添加位置
        spring两大功能：
        ①注入  ②aop(事务、为springmvc拦截器)
    2>为springmyBatis支持
        1.在spring配置文件中添加
             配置数据源
             配置自动注入
             配置MyBatis的SqlSessionFactory
             配置MyBatis自动扫描SQL映射文件
             配置事务管理
             配置AOP 基于注解

        2.创建myBatis-config.xml将mapper文件添加进去
        3.为myBatis添加log4j支持  创建log4j.properties
*********************************************************************************************************************************
5.整合springmvc（前端控制器、处理器映射器、处理器适配器、视图解析器）
    1.为web项目添加springmvc支持
        为web项目添加springmvc.xml（视图解析器、自动扫描、基于注解配置、配置SpringMVC拦截器、自定义参数绑定、配置SpringMVC支持文件上传、配置SpringMVC不过滤静态资源）
        在web.xml添加配置（DispatcherServlet、<init-param>contextConfigLocation）
    2.创建service\action\intercept\utils
    3.测试
*********************************************************************************************************************************
6.设置拦截器
    配置SpringMVC拦截器 日志打印第一位；后定义拦截其他
        配置日志支持：log4j配置文件
        业务：账号验证信息
*********************************************************************************************************************************
7.具体业务实现：dao接口、mapper.xml、service接口、service实现（@Service，注入dao资源@Autowired）
        action层：各个实体类对应controller（@Controller，注入service资源@Autowired，对应URL @RequestMapping）
        jsp界面（添加easyUI、bootstrap）
            userlogin.jsp登录界面
                普通用户登录：deptShow显示得到所有数据
                    NoInterceptor：获取输入的用户名密码放入session中，LoginInterceptor拦截器验证session中是否为空，重定向redirect:/action/dept/showAllDepts.do，携带从数据库中查询的数据返回界面"/deptShow.jsp"显示
                超级管理员登录链接：跳转到manager下的empLogin登录界面，经过NoInterceptor的/manager/openEmpLoginPage拦截后转发到forward:/WEB-INF/manager/empLogin.jsp，EmpController的：../emp/login.do，验证信息不等于空则跳转到/WEB-INF/manager/index.html，
                菜单处需要显示数据，向EmpController的下的json.do请求数据，解析domain下的json数据后显示树状登录界面
*********************************************************************************************************************************
8.UrlTrans
* 路径转发：/WEB-INF/manager/路径下的jsp不能直接访问，
     * 添加此处的转发处理可以访问到页面
     * 避免了下载界面的弊端，可以直接写jsp页面在本地，数据从数据库中读取即可
     * @param url index.jsp中中请求的地址
     * @return 返回forward:/WEB-INF/manager/下的页面

index.jsp中：/*将请求传递到URL转换controller中，返回所要访问的界面*/
                var content = "<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src=${pageContext.request.contextPath}/url2Secrect.do?url=" + node.attributes.url + "></iframe>"

empController：Attribute attribute = new Attribute();//直接访问jsp界面
                          attribute.setUrl(rs1.getString("url") + "/" + rs1.getString("op")+".jsp");
  *********************************************************************************************************************************
9.treeNode1.setAttributes(attribute);//树状管理：无文件夹下的单独选项卡，设置此属性，
树状管理：无文件夹下的单独选项卡，添加此属性， index.jsp（manager文件夹下）界面处需要可以点击显示此选项卡：node.attributes.url

*********************************************************************************************************************************
10.//        String path = request.getContextPath();//刷新数据需要重新进行请求故而加上此路径得到完整路径(备用，此处无需basePath)
   //        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  //http://localhost:8080/ssm/

*********************************************************************************************************************************

*********************************************************************************************************************************


3.打开命令行，通过命令行自动生成实体类
在配置文件出确定表名没有问题；
注意路径问题
将jar文件放到与自动生成文件的位置，在自动生成文件中targetProject：位置要写成绝对路径的位置（在src下单击右键show in Explorer，将位置粘贴过来，在后面加上\\src）
 打开自动生成文件位置，在空白处按住shift右键出现命令行界面，执行以下命令：
 java -jar mybatis-generator-core-1.3.2.jar -configfile ../config/generatorConfig.xml -overwrite
  执行jar命令   jar包名                 configfile 路径下（无则删除） 自动生成文件名

为springmvc注入  myBatis注入

springmvc：相当于servlet
**************************************************
