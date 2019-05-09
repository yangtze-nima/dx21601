package com.dx21601.service.impl;

import com.dx21601.common.ServerResponse;
import com.dx21601.dao.HoursMapper;
import com.dx21601.pojo.Hours;
import com.dx21601.service.IHoursService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImplHoursService implements IHoursService {
    @Autowired
    HoursMapper hoursMapper;

    //获取家庭住址
    @Override
    public ServerResponse<Hours> location(String hSid) {
        Hours hours=hoursMapper.selectByhSid(hSid);
        if (hours==null){
            return ServerResponse.createByErrorMessage("没有该同学信息！");
        }
        return ServerResponse.createBySuccess(hours);
    }

    //获取所有住址信息
    @Override
    public ServerResponse<List<Hours>> allHours() {
        List<Hours> hoursList=hoursMapper.allHours();
        if (hoursList==null){
            return ServerResponse.createByErrorMessage("无数据！");
        }
        return ServerResponse.createBySuccess(hoursList);
    }

    //修改经纬度
    @Override
    public ServerResponse updateLatitude(String hSid,String hJingdu, String hWeidu) {
        int a=hoursMapper.updateLatitude(hSid,hJingdu,hJingdu);
        if (a==0){
            ServerResponse.createByErrorMessage("修改失败！");
        }
        return ServerResponse.createBySuccessMessage("修改成功！");
    }
}
