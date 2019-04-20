package ssm.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.demo.dao.StudentMapper;
import ssm.demo.service.IStudentService;

/**
 * IStudentService
 * 接口中方法具体实现
 * */

@Service
public class ImplStudentService implements IStudentService {
    @Autowired
    StudentMapper studentMapper;
}
