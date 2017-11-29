package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by tedu on 2017/11/28.
 */
@Controller
public class HomeController {
    @RequestMapping("/home")
    public String home(){
        return"/index";
    }
}
