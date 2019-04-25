package ssm.demo.dao;

import org.apache.ibatis.annotations.Param;
import ssm.demo.entity.Student;

public interface StudentMapper {
    int deleteByPrimaryKey(String sSid);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String sSid);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    //查询学号是否存在
    int checkStudentBysid(String sid);

    //验证密码是否正确
    Student selectLogin(@Param("sid") String sid,@Param("pwd") String pwd);
}