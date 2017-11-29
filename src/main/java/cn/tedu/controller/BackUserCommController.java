package cn.tedu.controller;

import cn.tedu.pojo.Comment;
import cn.tedu.pojo.User;
import cn.tedu.service.BackGameCommService;
import cn.tedu.service.BackUserCommSerive;
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
public class BackUserCommController {

    @Autowired
    private BackUserListService backUserListService;
    @Autowired
    private BackUserCommSerive backUserCommSerive;
    @Autowired
    private BackGameCommService backGameCommService;

    @RequestMapping("usercomm")
    public String usercomm(Model model){
        List<User> list = backUserListService.findAll();
        model.addAttribute("users",list);
        return "/background/usercomm/index";
    }

    @RequestMapping("/usercomm/commlist")
    public String commList(String userId,Model model){
        List<Comment> list = backUserCommSerive.findAllUser(userId);
        model.addAttribute("comms",list);
        return "/background/usercomm/commlist";
    }

    @RequestMapping("/usercomm/delete")
    public String delete(String cId){
        backGameCommService.delete(cId);
        return "redirect:/usercomm";
    }
    @RequestMapping("/usercomm/find")
    public String find(String username,Model model){
        List<User> list = backUserListService.findUsername(username);
        model.addAttribute("users",list);
        return "/background/usercomm/index";
    }
}
