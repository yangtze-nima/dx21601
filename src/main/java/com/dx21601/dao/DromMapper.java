package com.dx21601.dao;

import com.dx21601.pojo.Drom;

import java.util.List;

public interface DromMapper {
    int deleteByPrimaryKey(String dId);

    int insert(Drom record);

    int insertSelective(Drom record);

    Drom selectByPrimaryKey(String dId);

    int updateByPrimaryKeySelective(Drom record);

    int updateByPrimaryKey(Drom record);

    //查询所有宿舍信息
    List<Drom> allDrom();
}