<%--
  Created by IntelliJ IDEA.
  User: DXnima
  Date: 2019/5/9
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>地信21601</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ready.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/demo.css">
    <script src="${pageContext.request.contextPath}/js/jquery/jquery.3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery/ready.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery/demo.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/dx21601.js"></script>
    <%--地图--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/map.css">
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css"/>
    <script type="text/javascript"
            src="http://webapi.amap.com/maps?v=1.4.13&key=8cc355b1d46538c64a75d9a0b57ea744"></script>
    <script src="https://webapi.amap.com/maps?v=1.4.13&key=8cc355b1d46538c64a75d9a0b57ea744&plugin=AMap.Driving"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
    <script src="https://a.amap.com/jsapi_demos/static/demo-center/js/demoutils.js"></script>
    <!-- UI组件库 1.0 -->
    <script src="//webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>
    <%--地图--%>
    <script>
        $(function () {
            mainPage();
        });
        layui.use(['element', 'jquery'], function () {
            var element = layui.element, $ = layui.jquery;
            $('#infor_main').load("infor/Main_Info.jsp");//默认首页
            $(".card div").click(function () {
                var url = $(this).data('href');
                $('#infor_main').load(url);
            })
        });

    </script>
    <style>
        .content-window-card {
            position: relative;
            box-shadow: none;
            bottom: 0;
            left: 0;
            width: auto;
            padding: 0;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <div class="main-header">
        <div class="logo-header">
            <a href="testmain.jsp" class="logo">
                地信21601
            </a>
            <button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
        </div>
        <nav class="navbar navbar-header navbar-expand-lg">
            <div class="container-fluid">
                <form class="navbar-left navbar-form nav-search mr-md-3" action="">
                    <div class="input-group">
                        <input type="text" placeholder="Search ..." class="form-control">
                        <div class="input-group-append">
								<span class="input-group-text">
									<i class="la la-search search-icon"></i>
								</span>
                        </div>
                    </div>
                </form>
                <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false">
                            ${student.sName}
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li>
                                <div class="user-box">
                                    <div class="u-text">
                                        <h4>${student.sName}</h4>
                                        <p class="text-muted">学号:<a id="main_hSid_a">${student.sSid}</a></p>
                                    </div>
                                </div>
                            </li>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" id="main_myinfo_a"><i class="ti-user"></i> 我的信息</a>
                            <a class="dropdown-item" href="#" id="main_update_myinfo_a"></i> 修改个人信息</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" id="main_update_psd_a"><i class="ti-settings"></i> 修改登陆密码</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" id="main_loginOut_a"><i class="fa fa-power-off"></i> 退出登陆</a>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="content">
        <div class="container-fluid">
            <h4 class="page-title">4444</h4>
            <div class="row">
                <div class="col-md-3">
                    <div class="card card-stats card-warning">
                        <div class="card-body ">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-users"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category">班级人数</p>
                                        <h4 class="card-title">31</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-stats card-success">
                        <div class="card-body ">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-bar-chart"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category">班级人数</p>
                                        <h4 class="card-title">31</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-stats card-danger">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-newspaper-o"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category">班级人数</p>
                                        <h4 class="card-title">31</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-stats card-primary">
                        <div class="card-body ">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="la la-check-circle"></i>
                                    </div>
                                </div>
                                <div class="col-7 d-flex align-items-center">
                                    <div class="numbers">
                                        <p class="card-category">班级人数</p>
                                        <h4 class="card-title">31</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-header" data-href="infor/Main_Info.jsp" style="cursor:pointer;">
                            <a class="card-title">首页</a>
                            <p class="card-category">Complete</p>
                        </div>
                        <div class="card-header" data-href="infor/Location_Map.jsp" style="cursor:pointer;">
                            <a class="card-title">地址分布情况</a>
                            <p class="card-category">地信21601班所有同学家庭住址分布情况</p>
                        </div>
                        <div class="card-header" data-href="infor/User_Table.jsp" style="cursor:pointer;">
                            <a class="card-title">班级所有学生信息</a>
                            <p class="card-category">Users Table</p>
                        </div>
                        <div class="card-header" data-href="infor/Location_Table.jsp" style="cursor:pointer;">
                            <a class="card-title">所有同学住址信息</a>
                            <p class="card-category">location Table</p>
                        </div>
                        <div class="card-header" data-href="infor/Drom_Table.jsp" style="cursor:pointer;">
                            <a class="card-title">宿舍信息</a>
                            <p class="card-category">Drom Table</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-9" id="infor_main">
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        ©2019 Leting <a href="javascript:;" target="_blank">关于</a> <span>地信21601</span> More Templates <a href=""
                                                                                                          target="_blank"
                                                                                                          title="">DXwnm</a>
        - Collect from <a href="" title="" target="_blank">dx21601</a>
    </footer>
</div>
</body>
</html>