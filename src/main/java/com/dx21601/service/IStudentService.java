package com.dx21601.service;

import com.dx21601.common.ServerResponse;
import com.dx21601.pojo.Student;

import java.util.Date;
import java.util.List;

public interface IStudentService {
    //登陆
    ServerResponse<Student> login(String sSid, String sPassword);

    //修改密码
    ServerResponse<Student> updatePsd(String sSid,String sPassword,String newPassword);

    //所有学生信息
    ServerResponse<List<Student>> allStudent();

    //修改个人信息，包括手机号，出生日期，宿舍号
    ServerResponse updateInfor(String sSid, String sNumber, Date sBirthday, String sSushehao);
}
