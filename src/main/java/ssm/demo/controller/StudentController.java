package ssm.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ssm.demo.common.ServerResponse;
import ssm.demo.entity.Student;
import ssm.demo.service.IStudentService;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/student/")
public class StudentController {
    @Autowired
    IStudentService iStudentService;

    @RequestMapping(value ="login",method = RequestMethod.POST)
    public ModelAndView login(HttpServletRequest req){
        ModelAndView retMap = new ModelAndView();  //返回新的ModelAndView
        String sid=req.getParameter("username");
        String pwd=req.getParameter("password");
        ServerResponse<Student> response=iStudentService.login(sid,pwd);
        if(response.isSuccess()){
            req.getSession().setAttribute("user",response.getData());
            retMap.setViewName("main");
        }
        else {
            retMap.setViewName("login");
            req.getSession().setAttribute("errorMsg","用户名不存在或密码错误！");
        }
        return retMap;
    }
}
