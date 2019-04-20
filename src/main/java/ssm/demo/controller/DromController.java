package ssm.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import ssm.demo.service.IDromService;

@Controller
@RequestMapping("/drom")
public class DromController {
    @Autowired
    IDromService iDromService;
}
