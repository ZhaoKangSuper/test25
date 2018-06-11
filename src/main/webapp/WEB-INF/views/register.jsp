<%--
  Created by IntelliJ IDEA.
  User: ZHAOKANG
  Date: 2018/6/11
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户注册</title>
    <base href="<%=request.getContextPath()%>/"/>
    <style>
        li {list-style: none;}
    </style>
</head>
<body>
<form:form action="user/register" method="post" enctype="multipart/form-data" modelAttribute="user">
    <li>
        <form:input path="userName" placeholder="用户名"/>
    </li>
    <li>
        <form:password path="userPassword" placeholder="密码"/>
    </li>
    <li>
        <form:input path="userTel" placeholder="手机号"/>
    </li>
    <li>
        <input type="file" name="imgFile" />
    </li>
    <li>
        <input type="submit" value="注册" />
    </li>
</form:form>
</body>
</html>

