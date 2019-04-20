package ssm.demo.dao;

import ssm.demo.entity.Drom;

public interface DromMapper {
    int deleteByPrimaryKey(String dId);

    int insert(Drom record);

    int insertSelective(Drom record);

    Drom selectByPrimaryKey(String dId);

    int updateByPrimaryKeySelective(Drom record);

    int updateByPrimaryKey(Drom record);
}