// layui.use('layer', function () {
// });

//图片轮播图
function loadMage() {
    $(".screenbg ul li").each(function () {
        $(this).css("opacity", "0");
    });
    $(".screenbg ul li:first").css("opacity", "1");
    var index = 0;
    var t;
    var li = $(".screenbg ul li");
    var number = li.size();

    function change(index) {
        li.css("visibility", "visible");
        li.eq(index).siblings().animate({opacity: 0}, 3000);
        li.eq(index).animate({opacity: 1}, 3000);
    }

    function show() {
        index = index + 1;
        if (index <= number - 1) {
            change(index);
        } else {
            index = 0;
            change(index);
        }
    }

    t = setInterval(show, 8000);
    //根据窗口宽度生成图片宽度
    var width = $(window).width();
    $(".screenbg ul img").css("width", width + "px");
};

//登陆页面所有事件 表单验证
function loginPage() {
    loadMage();
    /**
     *学号信息验证
     *  focus  元素获得焦点
     * */
    $("#stu_username_hide").focus(function () {
        var username = $(this).val();
        if (username == '输入学号') {
            $(this).val('');
        }
    });

    /**
     *focusout 元素失去焦点
     * */
    $("#stu_username_hide").focusout(function () {
        var username = $(this).val();
        if (username == '') {
            $(this).val('输入学号');
        }
    });
    $("#stu_password_hide").focus(function () {
        var username = $(this).val();
        if (username == '输入密码') {
            $(this).val('');
        }
    });
    $("#stu_password_hide").focusout(function () {
        var username = $(this).val();
        if (username == '') {
            $(this).val('输入密码');
        }
    });

    /**
     * 表单验证插件 Validform
     * */
    $(".stu_login_error").Validform({
        tiptype: function (msg, o, cssctl) {
            var objtip = $(".stu_error_box");
            cssctl(objtip, o.type);
            objtip.text(msg);
        }
    });

    /**
     * 元素点击事件
     * **/
    $("#login_btn").click(function () {
        login();
    });
};

//登陆请求
function login() {
    var objtip = $(".stu_error_box"); //获取错误提示窗口id
    var user = {
        "sSid": $("#stu_username_hide").val(),
        "sPassword": $("#stu_password_hide").val()
    };
    $.ajax({
        url: "../student/login.do",                //请求url
        type: "POST",                              //请求类型
        data: JSON.stringify(user),                //类对象的请求数据方式
        contentType: "application/json",           //请求数据json
        async: true,
        error: function () {//请求失败
            objtip.text("登陆失败！");
        },
        success: function (data) {
            //请求成功
            if (data.status === 0) {
                window.location.href = "view/testmain.jsp";//请求成功跳转界面
            } else {
                objtip.text(data.msg);
            }
        }
    });
}

//控制div显示隐藏
function display(id) {
    var traget = document.getElementById(id);
    if (traget.style.display == "none") {
        traget.style.display = "";
    } else {
        traget.style.display = "none";
    }
}

//主页面所有事件
function mainPage() {
    initMap();
    hoursLocation();//获取学生信息
    allStudent();//获取所有学生student信息
    allHours();//获取所有Hours学生信息
    allDrom();//获取所有宿舍信息
    $("#main_loginOut_a").click(function () {
        loginOut();
    });
    $("#main_update_psd_a").click(function () {
        //prompt弹窗
        layer.prompt(
            {
                title: '修改密码',
                formType: 1
            },
            function (val, index) {
                layer.msg('得到了' + val);
                layer.close(index);
            }
        );
    });

}

//获取学生信息
function hoursLocation() {
    var hSid = $("#main_hSid_a").text();
    $.ajax({
        url: "../hours/hoursLocation.do",         //请求url
        type: "POST",                              //请求类型
        data: {"hSid": hSid},                       //单数据类型的 请求数据方式
        async: true,
        error: function () {//请求失败
        },
        success: function (data) {
            //请求成功
            if (data.status === 0) {
                var location = data.data.hShengfen + data.data.hCity + data.data.hXiangxi;//家庭住址
                $("#main_location_a").html(location);//个main页面标签<a>赋值
            } else {
                window.location.href = "../login.jsp";//请求跳转跳转登陆界面
            }
        }
    });

}

//获取所有学生student信息
function allStudent() {
    $.ajax({
        url: "../student/allStudent.do",           //请求url
        type: "POST",                              //请求类型
        async: true,
        error: function () {//请求失败
        },
        success: function (data) {
            //请求成功
            if (data.status === 0) {
                $.each(data.data, function (i, item) {
                    var str = "";
                    str = "<tr>" +
                        "<td>" + i + "</td>" +
                        "<td>" + item.sName + "</td>" +
                        "<td>" + item.sSid + "</td>" +
                        "<td>" + item.sSex + "</td>" +
                        "<td>" + item.sNumber + "</td>" +
                        "<td>" + item.sBirthday + "</td>" +
                        "<td>" + item.sSushehao + "</td>" +
                        "<td>" + "<a style='color:cyan;cursor: pointer' onclick='updataInfor(" + item.sSid + ")'>" + "修改" + "</a>" + "</td>"
                    "</tr>"
                    $("#main_student_table").append(str);
                });
            } else {
            }
        }
    });
}

//获取所有Hours学生信息
function allHours() {
    $.ajax({
        url: "../hours/allHours.do",           //请求url
        type: "POST",                              //请求类型
        async: true,
        error: function () {//请求失败
        },
        success: function (data) {
            //请求成功
            if (data.status === 0) {
                $.each(data.data, function (i, item) {
                    var str = "<tr>" +
                        "<td>" + i + "</td>" +
                        "<td>" + item.hName + "</td>" +
                        "<td>" + item.hSid + "</td>" +
                        "<td>" + item.hShengfen + item.hCity + item.hXiangxi + "</td>" +
                        "<td>" + "<a style='color:cyan;cursor: pointer' onclick='updataInfor(" + item.hSid + ")'>" + "修改" + "</a>" + "</td>"
                    "</tr>"
                    $("#main_hours_table").append(str);
                });
            } else {
            }
        }
    });
}

function updataInfor(b) {
    var a = $("#main_hSid_a").text();
    if (a == b) {
        //弹窗prompt
        layer.prompt({
            title: '修改'
        });
    } else layer.msg('没有权限修改他人信息！', {icon: 5});
}

//获取所有宿舍信息
function allDrom() {
    $.ajax({
        url: "../drom/allDrom.do",           //请求url
        type: "POST",                              //请求类型
        async: true,
        error: function () {//请求失败
        },
        success: function (data) {
            //请求成功
            if (data.status === 0) {
                $.each(data.data, function (i, item) {
                    var str = "";
                    str = "<tr>" +
                        "<td>" + i + "</td>" +
                        "<td>" + item.dId + "</td>" +
                        "<td>" + item.dSum + "</td>" +
                        "<td>" + "<a style='color:cyan;cursor: pointer'>" + "修改" + "</a>" + "</td>"
                    "</tr>"
                    $("#main_drom_table").append(str);
                });
            } else {
            }
        }
    });
}

function loginOut() {
    $.ajax({
        url: "../student/loginOut.do",           //请求url
        type: "POST",                              //请求类型
        async: true,
        error: function () {//请求失败
        },
        success: function (data) {
            //请求成功
            if (data.status === 0) {
                window.location.href = "../login.jsp";//请求成功跳转界面
            } else {
            }
        }
    });
}

//创建和初始化地图函数：
function initMap() {
    createMap();//创建地图
    getLocation();//加载地图，调用浏览器定位服务
    selectMap();//搜索结果
}

//创建地图
function createMap() {
    map = new AMap.Map('container', {
        resizeEnable: true,
        center: [114.298572, 30.584355],//地图中心点
        zoom: 4,//地图显示的缩放级别
        keyboardEnable: false
    });
}

//加载地图，调用浏览器定位服务
function getLocation() {
    var Location = function () {
        geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,//是否使用高精度定位，默认:true
            timeout: 10000,          //超过10秒后停止定位，默认：无穷大
            buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
            zoomToAccuracy: false,      //定位区域
            buttonPosition: 'RB'
        });
        map.addControl(geolocation);
        geolocation.getCurrentPosition();
        var s = function (status, result) {
            position = result.position;
            if (status == 'complete') {
                onComplete(result);
                map.on('dblclick', function (e) {
                    map.add(buildMarker(e));
                    tipView(e);
                    drivingLine(position, e);
                });
            } else {
                onError(result);
            }
        };
        geolocation.getCurrentPosition(s);

    }
    map.plugin('AMap.Geolocation', Location);
}


//解析定位结果
function onComplete(data) {
    var str = ['定位成功'];
    str.push('经度：' + data.position.getLng());
    str.push('纬度：' + data.position.getLat());
    str.push('精度：' + data.accuracy + ' 米');
    str.push('是否经过偏移：' + (data.isConverted ? '是' : '否'));
    document.getElementById('tip').innerHTML = str.join('<br>');
}

//解析定位错误信息
function onError(data) {
    document.getElementById('tip').innerHTML = '定位失败';
}

//搜索查询获得结果
function selectMap() {
    AMap.plugin(['AMap.Autocomplete', 'AMap.PlaceSearch'], function () {
        var autoOptions = {
            city: "全国", //城市，默认全国
            input: "keyword"//使用联想输入的input的id
        };
        autocomplete = new AMap.Autocomplete(autoOptions);
        var placeSearch = new AMap.PlaceSearch({
            city: '全国',
            map: map
        });
        AMap.event.addListener(autocomplete, "select", function (e) {
            placeSearch.search(e.poi.name, function (status, result) {
                // 查询成功时，result即对应匹配的POI信息
                //map.clearMap();
                console.log(result)
                var pois = result.poiList.pois;
                for (var i = 0; i < pois.length; i++) {
                    var poi = pois[i];
                    var marker = [];
                    marker[i] = new AMap.Marker({
                        position: poi.location,   // 经纬度对象，也可以是经纬度构成的一维数组[116.39, 39.9]
                        title: poi.name
                    });
                    //将创建的点标记添加到已有的地图实例：
                    map.add(marker[i]);
                }
                marker.on('click', function (e) {
                    tipView(e);
                });
                marker.emit('click', {target: marker});
            });
        });
    });
}

function buildMarker(e) {
    // 构造点标记
    var marker = new AMap.Marker({
        icon: "https://webapi.amap.com/theme/v1.3/markers/n/mark_b.png",
        position: [e.lnglat.getLng(), e.lnglat.getLat()]
    });
    return marker;
}

//显示信息
function tipView(e) {
    var str = ['终点地理信息'];
    str.push('经度：' + e.lnglat.getLng());
    str.push('纬度：' + e.lnglat.getLat());
    document.querySelector('#tip').innerHTML = str.join('<br>');
}


/**
 * 添加标点并显示
 * tstr 标题
 * cstr 内容
 * j 精度
 * w 纬度
 * **/
function addInfo(tstr, cstr, j, w) {
    if (j != null && w != null)
        addMarker();

    //添加marker标记
    function addMarker() {
        var marker = new AMap.Marker({
            map: map,
            position: [j, w]
        });
        //鼠标点击marker弹出自定义的信息窗体
        AMap.event.addListener(marker, 'click', function () {
            //alert(marker.getPosition());
            infoWindow.open(map, marker.getPosition());
        });
    }

    //实例化信息窗体
    var title = tstr, content = [];
    content.push("<img src='http://tpc.googlesyndication.com/simgad/5843493769827749134'>" + cstr + "");
    var infoWindow = new AMap.InfoWindow({
        isCustom: true,  //使用自定义窗体
        content: createInfoWindow(title, content.join("<br/>")),
        offset: new AMap.Pixel(16, -45)
    });

    //构建自定义信息窗体
    function createInfoWindow(title, content) {
        var info = document.createElement("div");
        info.className = "custom-info input-card content-window-card";

        //可以通过下面的方式修改自定义窗体的宽高
        //info.style.width = "400px";
        // 定义顶部标题
        var top = document.createElement("div");
        var titleD = document.createElement("div");
        var closeX = document.createElement("img");
        top.className = "info-top";
        titleD.innerHTML = title;
        closeX.src = "https://webapi.amap.com/images/close2.gif";
        closeX.onclick = closeInfoWindow;

        top.appendChild(titleD);
        top.appendChild(closeX);
        info.appendChild(top);

        // 定义中部内容
        var middle = document.createElement("div");
        middle.className = "info-middle";
        middle.style.backgroundColor = 'white';
        middle.innerHTML = content;
        info.appendChild(middle);

        // 定义底部内容
        var bottom = document.createElement("div");
        bottom.className = "info-bottom";
        bottom.style.position = 'relative';
        bottom.style.top = '0px';
        bottom.style.margin = '0 auto';
        var sharp = document.createElement("img");
        sharp.src = "https://webapi.amap.com/images/sharp.png";
        bottom.appendChild(sharp);
        info.appendChild(bottom);
        return info;
    }

    //关闭信息窗体
    function closeInfoWindow() {
        map.clearInfoWindow();
    }
}





