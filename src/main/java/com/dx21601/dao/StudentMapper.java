package com.dx21601.dao;

import com.dx21601.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface StudentMapper {
    int deleteByPrimaryKey(String sSid);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String sSid);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    //通过学号查询
    Student selectBySsid(@Param("sSid") String sSid);

    //修改密码
    int updateByPsd(@Param("sSid") String sSid,@Param("sPassword") String sPassword);

    //查询所有学生信息
    List<Student> allStudent();

    //修改个人信息，包括手机号，出生日期，宿舍号
    int updateByInfor(@Param("sSid") String sSid, @Param("sNumber") String sNumber, @Param("sBirthday") Date sBirthday, @Param("sSushehao") String sSushehao);
}