package com.dx21601.service.impl;

import com.dx21601.common.ServerResponse;
import com.dx21601.dao.DromMapper;
import com.dx21601.pojo.Drom;
import com.dx21601.service.IDromService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImplDromService implements IDromService {
    @Autowired
    DromMapper dromMapper;

    //获取所有宿舍信息
    @Override
    public ServerResponse<List<Drom>> allDrom() {
        List<Drom> dromList = dromMapper.allDrom();
        if (dromList == null) {
            return ServerResponse.createByErrorMessage("无数据！");
        }
        return ServerResponse.createBySuccess(dromList);
    }
}
