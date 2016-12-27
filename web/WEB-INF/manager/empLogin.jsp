<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/21
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>用户登录</title>
  </head>
  <body>
    <form action="../emp/login.do" method="post">
      <input type="text" name="empName"><br>
      <input type="password" name="empPwd"><br>
      <input type="submit" value="登录">
    </form>
  </body>
</html>
