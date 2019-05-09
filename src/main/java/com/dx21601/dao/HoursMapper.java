package com.dx21601.dao;

import com.dx21601.pojo.Hours;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HoursMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Hours record);

    int insertSelective(Hours record);

    Hours selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Hours record);

    int updateByPrimaryKey(Hours record);

    Hours selectByhSid(String hSid);

    List<Hours> allHours();

    int updateLatitude(@Param("hSid") String hSid,@Param("hJingdu") String hJingdu,@Param("hWeidu") String hWeidu);
}