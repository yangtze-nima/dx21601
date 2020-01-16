package com.dx21601.controller;

import com.dx21601.common.ServerResponse;
import com.dx21601.pojo.Drom;
import com.dx21601.service.IDromService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/drom/")
public class DromController {
    @Autowired
    IDromService iDromService;

    //获取所有宿舍信息
    @RequestMapping(value = "/allDrom", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<List<Drom>> allDrom(HttpSession session) {
        ServerResponse<List<Drom>> serverResponse = iDromService.allDrom();
        if (serverResponse.isSuccess()) {
            session.setAttribute("allDrom", serverResponse.getData());
            return serverResponse;
        }
        return serverResponse;
    }
}
