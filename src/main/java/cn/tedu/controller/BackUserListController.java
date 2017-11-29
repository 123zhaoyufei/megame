package cn.tedu.controller;

import cn.tedu.pojo.User;
import cn.tedu.service.BackUserListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by tedu on 2017/11/27.
 */
@Controller
public class BackUserListController {

    @Autowired
    private BackUserListService backUserListService;

    @RequestMapping("userlist")
    public String userList(Model model){
        List<User> list = backUserListService.findAll();
        model.addAttribute("users",list);
        return "/background/userlist/index";
    }

    @RequestMapping("/userlist/edit")
    public String edit(String userId,Model model){
        User user = backUserListService.findOne(userId);
        model.addAttribute("user",user);
        return "/background/userlist/edit";
    }

    @RequestMapping("/userlist/index")
    public String index(User user){
        backUserListService.saveUser(user);
        return "redirect:/userlist";
    }

    @RequestMapping("/userlist/toadd")
    public String toAdd(User user){
        backUserListService.addUser(user);
        return "redirect:/userlist";
    }
    @RequestMapping("/userlist/find")
    public String find(String username,Model model){
        List<User> list = backUserListService.findUsername(username);
        model.addAttribute("users",list);
        return "/background/userlist/index";
    }
    @RequestMapping("/userlist/add")
    public String add(){
        return "/background/userlist/add";
    }

}
