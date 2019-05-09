<%--
  Created by IntelliJ IDEA.
  User: DXnima
  Date: 2019/4/23
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jQuery1.7.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery1.42.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery.SuperSlide.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/Validform_v5.3.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/dx21601.js"></script>
    <script>
        $(function() {
            mainPage();
        });
    </script>
</head>
<body>
登录成功!<br/>
学号：<p id="hSid">${student.sSid}</p><br/>
姓名：${student.sName}<br/>
性别：${student.sSex}<br/>
手机号：${student.sNumber}<br/>
宿舍号：${student.sSushehao}<br/>
地址：${hours.hShengfen}${hours.hCity}${hours.hXiangxi}<br/>
</body>
</html>
