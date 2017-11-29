package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by tedu on 2017/11/25.
 */
@Controller
public class BackHomeController {

    @RequestMapping("/background")
    public String index(){
        return "/background/index";
    }

}
