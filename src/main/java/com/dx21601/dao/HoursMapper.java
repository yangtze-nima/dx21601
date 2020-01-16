package com.dx21601.dao;

import com.dx21601.pojo.Hours;

public interface HoursMapper {
    int deleteByPrimaryKey(String hSid);

    int insert(Hours record);

    int insertSelective(Hours record);

    Hours selectByPrimaryKey(String hSid);

    int updateByPrimaryKeySelective(Hours record);

    int updateByPrimaryKey(Hours record);
}