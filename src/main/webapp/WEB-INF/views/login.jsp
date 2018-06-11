<%--
  Created by IntelliJ IDEA.
  User: ZHAOKANG
  Date: 2018/6/10
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/test/login" method="post">
        <br>
        <input type="text" name="username" value="用户名" />
        <br>
        <input type="password" name="password" value="密码" />
        <br>
        <input type="submit" name="submit" value="登录" />
        <input type="reset" name="reset" value="重置" />
    </form>
</body>
</html>
