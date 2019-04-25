<%--
  Created by IntelliJ IDEA.
  User: DXnima
  Date: 2019/4/22
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <link type="text/css" href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" rev="stylesheet" media="all" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery1.7.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.SuperSlide.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/Validform_v5.3.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/dx21601.js"></script>
</head>

<body>
<div id="tab">
    <div class="tab_box">
        <!-- 学生登录开始 -->
        <div>
            <div class="stu_error_box" id="errorBox">${errorMsg}</div>
            <form action="/student/login" method="post" class="stu_login_error">
                <div id="username">
                    <label>学&nbsp;&nbsp;&nbsp;号：</label>
                    <input type="text" id="stu_username_hide" name="username" value="输入学号" nullmsg="学号不能为空！" datatype="s6-18" errormsg="学号范围在6~18个字符之间！" sucmsg="学号验证通过！"/>
                    <!--ajaxurl="demo/valid.jsp"-->
                </div>
                <div id="password">
                    <label>密&nbsp;&nbsp;&nbsp;码：</label>
                    <input type="password" id="stu_password_hide" name="password" value="输入密码" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" sucmsg="密码验证通过！"/>
                </div>
                <div id="remember">
                    <input type="checkbox" name="remember">
                    <label>记住密码</label>
                </div>
                <div id="login">
                    <button type="submit">登录</button>
                </div>
            </form>
        </div>
        <!-- 学生登录结束-->
    </div>
</div>
<div class="bottom">©2019 Leting <a href="javascript:;" target="_blank">关于</a> <span>地信21601</span>  More Templates <a href="" target="_blank" title="">DXwnm</a> - Collect from <a href="" title="" target="_blank">dx21601</a></div>
<div class="screenbg">
    <ul>
        <li><a href="javascript:;"><img src="${pageContext.request.contextPath}/images/0.jpg"></a></li>
        <li><a href="javascript:;"><img src="${pageContext.request.contextPath}/images/1.jpg"></a></li>
    </ul>
</div>
</body>
</html>

