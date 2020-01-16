package com.dx21601.dao;

import com.dx21601.pojo.Hours;

import java.util.List;

public interface HoursMapper {
    int deleteByPrimaryKey(String hSid);

    int insert(Hours record);

    int insertSelective(Hours record);

    Hours selectByPrimaryKey(String hSid);

    int updateByPrimaryKeySelective(Hours record);

    int updateByPrimaryKey(Hours record);

    //学号查询
    Hours selectByhSid(String hSid);

    //所有家庭信息
    List<Hours> allHours();

    //更新个人位置信息
    int updateLatitude(String hSid, String hJingdu, String hWeidu);
}