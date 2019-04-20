package ssm.demo.dao;

import ssm.demo.entity.Hours;

public interface HoursMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Hours record);

    int insertSelective(Hours record);

    Hours selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Hours record);

    int updateByPrimaryKey(Hours record);
}