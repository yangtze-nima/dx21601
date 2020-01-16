package com.dx21601.service;

import com.dx21601.common.ServerResponse;
import com.dx21601.pojo.Hours;

import java.util.List;

public interface IHoursService {
    //获取家庭住址
    ServerResponse<Hours> location(String hSid);

    //获取所有住址信息
    ServerResponse<List<Hours>> allHours();

    //修改经纬度
    ServerResponse updateLatitude(String hSid, String hJingdu, String hWeidu);
}
