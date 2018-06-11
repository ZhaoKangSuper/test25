<%--
  Created by IntelliJ IDEA.
  User: ZHAOKANG
  Date: 2018/6/11
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户个人信息</title>
    <base href="<%=request.getContextPath()%>/"/>
    <style>
        li {list-style: none;}
    </style>
</head>
<body>
<h4>个人信息</h4>
<li>
    <!-- 头像显示 -->
    <img src="user/showPic/${user.userPic}" style="width:100px; height: 100px;"/>
</li>
<li>
    用户名：${user.userName}
</li>
<li>
    手机号：${user.userTel}
</li>
<li>
    <a href="user/downloadPic/${user.userPic}">下载头像图片</a>
</li>
</body>
</html>
