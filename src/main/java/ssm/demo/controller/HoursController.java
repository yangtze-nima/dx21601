package ssm.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import ssm.demo.service.IHoursService;

@Controller
@RequestMapping("/hours")
public class HoursController {
    @Autowired
    IHoursService iHoursService;
}
