package ssm.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.demo.dao.HoursMapper;
import ssm.demo.service.IHoursService;

@Service
public class ImplHoursService implements IHoursService {
    @Autowired
    HoursMapper hoursMapper;
}
