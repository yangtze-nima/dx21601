package com.dx21601.service.impl;

import com.dx21601.common.ResponseCode;
import com.dx21601.common.ServerResponse;
import com.dx21601.dao.StudentMapper;
import com.dx21601.pojo.Student;
import com.dx21601.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ImplStudentService implements IStudentService {
    @Autowired
    StudentMapper studentMapper;

    //登陆
    @Override
    public ServerResponse<Student> login(String sSid, String sPassword) {
        Student student=studentMapper.selectBySsid(sSid);
        if (student==null){
            ServerResponse serverResponse=ServerResponse.createByErrorCodeMessage(ResponseCode.UnRegist.getCode(),"用户名不存在请注册！");
            return serverResponse;
        }
        if (!sPassword.equals(student.getsPassword())){
            return ServerResponse.createByErrorMessage("密码错误！");
        }
        return ServerResponse.createBySuccess(student);
    }

    //修改密码
    @Override
    public ServerResponse<Student> updatePsd(String sSid, String sPassword,String newPassword) {
        Student student=studentMapper.selectBySsid(sSid);
        if (student==null){
            ServerResponse serverResponse=ServerResponse.createByErrorCodeMessage(ResponseCode.UnRegist.getCode(),"用户名不存在请注册！");
            return serverResponse;
        }
        if (!sPassword.equals(student.getsPassword())){
            return ServerResponse.createByErrorMessage("密码错误！");
        }
        int a=studentMapper.updateByPsd(sSid,newPassword);
        if (a==0) {
            return ServerResponse.createByErrorMessage("修改失败！");
        }
        return ServerResponse.createBySuccessMessage("修改成功！");
    }

    //所有学生信息
    @Override
    public ServerResponse<List<Student>> allStudent() {
        List<Student> studentList=studentMapper.allStudent();
        if (studentList==null){
            return ServerResponse.createByErrorMessage("无数据！");
        }
        return ServerResponse.createBySuccess(studentList);
    }

    //修改个人信息，包括手机号，出生日期，宿舍号
    @Override
    public ServerResponse updateInfor(String sSid, String sNumber, Date sBirthday, String sSushehao) {
        int a=studentMapper.updateByInfor(sSid,sNumber,sBirthday,sSushehao);
        if (a==0){
            return ServerResponse.createByErrorMessage("修改失败！");
        }
        return ServerResponse.createBySuccessMessage("修改成功！");
    }
}
