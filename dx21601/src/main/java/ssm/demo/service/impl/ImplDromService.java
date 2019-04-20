package ssm.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.demo.dao.DromMapper;
import ssm.demo.service.IDromService;

@Service
public class ImplDromService implements IDromService {
    @Autowired
    DromMapper dromMapper;
}
