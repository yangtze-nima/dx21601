<%--
  Created by IntelliJ IDEA.
  User: DXnima
  Date: 2020/1/7
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ready.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/demo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/map.css">
    <script src="${pageContext.request.contextPath}/js/jquery/jquery.3.2.1.min.js"></script>
    <%--地图--%>
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css"/>
    <script type="text/javascript"
            src="http://webapi.amap.com/maps?v=1.4.13&key=8cc355b1d46538c64a75d9a0b57ea744"></script>
    <script src="https://webapi.amap.com/maps?v=1.4.13&key=8cc355b1d46538c64a75d9a0b57ea744&plugin=AMap.Driving"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
    <script src="https://a.amap.com/jsapi_demos/static/demo-center/js/demoutils.js"></script>
    <!-- UI组件库 1.0 -->
    <script src="//webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>
    <script>
        $(function () {
            initMap();
            hoursLocation();//获取学生信息
            allHours();//获取所有Hours学生信息
        });
    </script>
</head>
<body>
<div class="card">
    <div class="card-header">
        <h4 class="card-title">地址分布情况</h4>
        <p class="card-category">
            地信21601班所有同学家庭住址分布情况</p>
    </div>
    <div class="card-body">
        <div class="mapcontainer mapael">
            <div class="map">
                <svg style="height: 600px">
                    <div id='container'></div>
                    <div id="panel"></div>
                    <div id="tip"></div>
                    <div id="searchtip">
                        <input type="text" id="keyword" name="keyword" value="请输入关键字：(选定后搜索)" onfocus='this.value=""'/>
                    </div>
                </svg>
            </div>
        </div>
    </div>
</div>
</body>
</html>