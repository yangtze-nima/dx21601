package ssm.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ssm.demo.service.IStudentService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    IStudentService iStudentService;

    @RequestMapping(value ="/login",method = RequestMethod.POST)
    public ModelAndView login(HttpServletRequest req, HttpServletResponse resp){
        ModelAndView retMap = new ModelAndView();  //返回新的ModelAndView
        String username=req.getParameter("username");
        String pwd=req.getParameter("password");
        int code=iStudentService.login(username,pwd);
        if(code==1){
            req.getSession().setAttribute("user",iStudentService.getUserByName(username));
            retMap.setViewName("main");
        }
        else {
            retMap.setViewName("login");
            req.getSession().setAttribute("errorMsg","用户名不存在或密码错误！");
        }
        return retMap;
    }
}
