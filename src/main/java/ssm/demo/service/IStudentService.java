package ssm.demo.service;

import ssm.demo.common.ServerResponse;
import ssm.demo.entity.Student;

/**
 * ImplStudentService类
 * 方法实现接口
 **/
public interface IStudentService {
    public ServerResponse<Student> login(String s_sid, String s_password);
}
