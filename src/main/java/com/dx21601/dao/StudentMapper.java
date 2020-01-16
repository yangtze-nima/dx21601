package com.dx21601.dao;

import com.dx21601.pojo.Student;
import org.openxmlformats.schemas.drawingml.x2006.chart.STXstring;

import java.util.Date;
import java.util.List;

public interface StudentMapper {
    int deleteByPrimaryKey(String sSid);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String sSid);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    //更新密码
    int updateByPsd(String sSid,String sPassword);

    //通过id查
    Student selectBySsid(String sSid);

    //更新个人信息
    int updateByInfor(String sSid, String sNumber, Date sBirthday, String sSushehao);

    //所有学生信息
    List<Student> allStudent();
}