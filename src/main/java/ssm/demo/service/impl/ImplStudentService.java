package ssm.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.demo.dao.StudentMapper;
import ssm.demo.entity.Student;
import ssm.demo.service.IStudentService;

import javax.security.auth.Subject;

/**
 * IStudentService
 * 接口中方法具体实现
 * */

@Service
public class ImplStudentService implements IStudentService {
    @Autowired
    StudentMapper studentMapper;

    public void setStudentMapper(StudentMapper userMapper) {
        this.studentMapper = userMapper;
    }

    @Override
    public Student getUserByName(String sid) {
        return studentMapper.selectByPrimaryKey(sid);
    }

    @Override
    public int login(String s_sid, String s_password) {
        int code=1;
        Student student=studentMapper.selectByPrimaryKey(s_sid);
        if (student==null)
            code=-1;//"用户名不存在！"
        else if(!s_password.equals(student.getsPassword()))
            code=0;//"密码错误！"
        else code=1;
        return code;
    }
}
