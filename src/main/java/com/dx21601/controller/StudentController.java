package com.dx21601.controller;

import com.dx21601.common.ServerResponse;
import com.dx21601.pojo.Student;
import com.dx21601.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@CrossOrigin
@Controller
@RequestMapping("/student/")
public class StudentController {
    @Autowired
    IStudentService iStudentService;

    //登陆
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse Login(@RequestBody Student student, HttpSession session) {
        String username = student.getsSid();
        String password = student.getsPassword();
        ServerResponse serverResponse = iStudentService.login(username, password);
        if (serverResponse.isSuccess()) {
            session.setAttribute("student", serverResponse.getData());//将数据存入session 供前台页面使用用法 ${student.sSid}
            return serverResponse;
        }
        return serverResponse;
    }

    //获取所有学生信息
    @RequestMapping(value = "/allStudent", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<List<Student>> allStudent(HttpSession session) {
        ServerResponse<List<Student>> serverResponse = iStudentService.allStudent();
        if (serverResponse.isSuccess()) {
            session.setAttribute("allStudent", serverResponse.getData());//将数据存入session 供前台页面使用用法 ${student.sSid}
            return serverResponse;
        }
        return serverResponse;
    }

    //修改密码
    @RequestMapping(value = "/updatePsd")
    @ResponseBody
    public ServerResponse updatePsd(String sSid, String sPassword, String newPassword) {
        return iStudentService.updatePsd(sSid, sPassword, newPassword);
    }

    //修改个人信息，包括手机号，出生日期，宿舍号
    @RequestMapping(value = "/updateInfor")
    @ResponseBody
    public ServerResponse updateInfor(@RequestBody Student student) {
        String sSid = student.getsSid();
        String sNumber = student.getsNumber();
        Date sBirthday = student.getsBirthday();
        String sSushehao = student.getsSushehao();
        ServerResponse serverResponse = iStudentService.updateInfor(sSid, sNumber, sBirthday, sSushehao);
        return serverResponse;
    }

    //退出登录
    @RequestMapping("/loginOut")
    @ResponseBody
    public ServerResponse loginOut(HttpSession session) {
        session.removeAttribute("student");
        return ServerResponse.createBySuccessMessage("退出成功！");
    }

    //获取所有学生信息
    @RequestMapping(value = "/allStudentTest", method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<Student>> allStudentTest() {
        ServerResponse<List<Student>> serverResponse = iStudentService.allStudent();
        if (serverResponse.isSuccess()) {
            //session.setAttribute("allStudent",serverResponse.getData());//将数据存入session 供前台页面使用用法 ${student.sSid}
            return serverResponse;
        }
        return serverResponse;
    }

}
