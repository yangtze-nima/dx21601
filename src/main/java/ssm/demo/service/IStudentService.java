package ssm.demo.service;

import ssm.demo.entity.Student;

/**
 * ImplStudentService类
 * 方法实现接口
 **/
public interface IStudentService {
    public Student getUserByName(String sid);
    public int login(String s_sid, String s_password);
}
