<%--
  Created by IntelliJ IDEA.
  User: DXnima
  Date: 2019/4/23
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
<h1 id="main_login_h1">请去登陆!<a href="../login.jsp">这里</a></h1><br/>
学号：<a id="main_hSid_a">${student.sSid}</a><br/>
姓名：${student.sName}<br/>
性别：${student.sSex}<br/>
手机号：${student.sNumber}<br/>
宿舍号：${student.sSushehao}<br/>
地址：<a id="main_location_a"></a><br/>
    <%--${hours.hShengfen}${hours.hCity}${hours.hXiangxi}--%>
<br/>所有学生信息：
<table id="main_student_table" style="border-collapse:separate; border-spacing:100px 15px;">
    <tr>
        <th>编&nbsp;&nbsp;号</th>
        <th>姓&nbsp;&nbsp;&nbsp;&nbsp;名</th>
        <th>学号</th>
        <th>性别</th>
        <th>手机号</th>
        <th>出生日期</th>
        <th>宿舍号</th>
    </tr>
</table>
<br/>所有住址信息：
<table id="main_hours_table" style="border-collapse:separate; border-spacing:100px 15px;">
    <tr>
        <th>编&nbsp;&nbsp;号</th>
        <th>姓&nbsp;&nbsp;名</th>
        <th>学号</th>
        <th>详细住址</th>
    </tr>
</table>
<br/>所有宿舍信息：
<table id="main_drom_table" style="border-collapse:separate; border-spacing:100px 15px;">
    <tr>
        <th>编&nbsp;&nbsp;号</th>
        <th>宿舍号</th>
        <th>人数</th>
    </tr>
</table>
</body>
</html>
