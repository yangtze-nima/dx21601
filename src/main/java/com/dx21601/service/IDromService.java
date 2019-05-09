package com.dx21601.service;

import com.dx21601.common.ServerResponse;
import com.dx21601.pojo.Drom;

import java.util.List;

public interface IDromService {
    //获取所有宿舍信息
    ServerResponse<List<Drom>> allDrom();
}
