package cn.tedu.controller;

import cn.tedu.pojo.Comment;
import cn.tedu.pojo.Game;
import cn.tedu.service.BackGameCommService;
import cn.tedu.service.BackGameListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by tedu on 2017/11/27.
 */
@Controller
public class BackGameCommController {

    @Autowired
    private BackGameListService backGameListService;
    @Autowired
    private BackGameCommService backGameCommService;

    @RequestMapping("gamecomm")
    public String gameComm(Model model){
        List<Game> list = backGameListService.findAll();
        model.addAttribute("games",list);
        return "/background/gamecomm/index";
    }

    @RequestMapping("/gamecomm/commlist")
    public String commList(Integer gId,Model model){
        List<Comment> list = backGameCommService.findAllGame(gId);
        model.addAttribute("comms",list);
        return "/background/gamecomm/commlist";
    }

    @RequestMapping("/gamecomm/delete")
    public String delete(String cId){
        backGameCommService.delete(cId);
        return "redirect:/gamecomm";
    }
    @RequestMapping("/gamecomm/find")
    public String findOne(String gName,Model model){
        List<Game> list = backGameListService.findGname(gName);
        model.addAttribute("games",list);
        return "/background/gamecomm/index";
    }
}
