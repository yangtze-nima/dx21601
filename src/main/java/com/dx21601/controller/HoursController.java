package com.dx21601.controller;

import com.dx21601.common.ServerResponse;
import com.dx21601.pojo.Hours;
import com.dx21601.service.IHoursService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.nio.channels.Pipe;
import java.util.List;

@Controller
@RequestMapping("/hours/")
public class HoursController {
    @Autowired
    IHoursService iHoursService;

    //通过学号获取个人地址信息
    @RequestMapping(value = "/hoursLocation", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse HoursLocation(String hSid, HttpSession session){
        ServerResponse serverResponse=iHoursService.location(hSid);
        if (serverResponse.isSuccess()){
            session.setAttribute("hours",serverResponse.getData());
            return serverResponse;
        }
        return serverResponse;
    }

    //获取所有住址信息
    @RequestMapping(value = "/allHours", method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<List<Hours>> allHours(HttpSession session){
        ServerResponse<List<Hours>> serverResponse=iHoursService.allHours();
        if (serverResponse.isSuccess()){
            session.setAttribute("allHours",serverResponse.getData());
            return serverResponse;
        }
        return serverResponse;
    }

    //修改经纬度
    @RequestMapping(value = "/updateLatitude")
    @ResponseBody
    public ServerResponse updateLatitude(@RequestBody Hours hours){
        String hSid=hours.gethSid();
        String hJingdu=hours.gethJingdu();
        String hWeidu=hours.gethWeidu();
        return iHoursService.updateLatitude(hSid,hJingdu,hWeidu);
    }
}
