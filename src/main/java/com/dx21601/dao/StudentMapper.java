package com.dx21601.dao;

import com.dx21601.pojo.Student;

public interface StudentMapper {
    int deleteByPrimaryKey(String sSid);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String sSid);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}