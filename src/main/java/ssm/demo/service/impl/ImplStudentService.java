package ssm.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.demo.common.ServerResponse;
import ssm.demo.dao.StudentMapper;
import ssm.demo.entity.Student;
import ssm.demo.service.IStudentService;

import javax.security.auth.Subject;

/**
 * IStudentService
 * 接口中方法具体实现
 * */

@Service("iStudentService")
public class ImplStudentService implements IStudentService {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public ServerResponse<Student> login(String s_sid, String s_password) {
        int code=studentMapper.checkStudentBysid(s_sid);
        if (code==0) {
            return ServerResponse.createByErrorMessage("用户名不存在");
        }
        Student student=studentMapper.selectLogin(s_sid,s_password);
        if(student==null){
            return ServerResponse.createByErrorMessage("密码错误");
        }
        return ServerResponse.createBySuccess("登陆成功",student);
    }
}
