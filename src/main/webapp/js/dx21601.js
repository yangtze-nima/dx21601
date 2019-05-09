

//图片轮播图
function loadMage(){
    $(".screenbg ul li").each(function(){
        $(this).css("opacity","0");
    });
    $(".screenbg ul li:first").css("opacity","1");
    var index = 0;
    var t;
    var li = $(".screenbg ul li");
    var number = li.size();
    function change(index){
        li.css("visibility","visible");
        li.eq(index).siblings().animate({opacity:0},3000);
        li.eq(index).animate({opacity:1},3000);
    }
    function show(){
        index = index + 1;
        if(index<=number-1){
            change(index);
        }else{
            index = 0;
            change(index);
        }
    }
    t = setInterval(show,8000);
    //根据窗口宽度生成图片宽度
    var width = $(window).width();
    $(".screenbg ul img").css("width",width+"px");
};

//登陆页面所有事件 表单验证
function loginPage(){
    loadMage();
    /**
    *学号信息验证
    *  focus  元素获得焦点
    * */
    $("#stu_username_hide").focus(function(){
        var username = $(this).val();
        if(username=='输入学号'){
            $(this).val('');
        }
    });

    /**
    *focusout 元素失去焦点
    * */
    $("#stu_username_hide").focusout(function(){
        var username = $(this).val();
        if(username==''){
            $(this).val('输入学号');
        }
    });
    $("#stu_password_hide").focus(function(){
        var username = $(this).val();
        if(username=='输入密码'){
            $(this).val('');
        }
    });
    $("#stu_password_hide").focusout(function(){
        var username = $(this).val();
        if(username==''){
            $(this).val('输入密码');
        }
    });

    /**
     * 表单验证插件 Validform
     * */
    $(".stu_login_error").Validform({
        tiptype:function(msg,o,cssctl){
            var objtip=$(".stu_error_box");
            cssctl(objtip,o.type);
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
    var objtip=$(".stu_error_box"); //获取错误提示窗口id
    var user={
        "sSid":$("#stu_username_hide").val(),
        "sPassword":$("#stu_password_hide").val()
    };
    $.ajax({
        url:"../student/login.do",                //请求url
        type:"POST",                              //请求类型
        data:JSON.stringify(user),                //类对象的请求数据方式
        contentType:"application/json",           //请求数据json
        async: true,
        error:function(){//请求失败
            objtip.text("登陆失败！");
        },
        success:function (data) {
            //请求成功
            if (data.status===0){
                window.location.href="view/main.jsp";//请求成功跳转界面
            }
            else {
                objtip.text(data.msg);
            }
        }
    });
}


//主页面所有事件
function mainPage() {
    hoursLocation();
}

//获取学生信息
function hoursLocation() {
    var hSid =$("#hSid").text();
    $.ajax({
        url: "../hours/hoursLocation.do",         //请求url
        type: "POST",                              //请求类型
        data: {"hSid": hSid},                       //单数据类型的 请求数据方式
        error: function () {//请求失败
        },
        success: function (data) {
            //请求成功
            if (data.status === 0) {
            }
            else {
            }
        }
    });

}
