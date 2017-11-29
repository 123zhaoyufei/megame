package cn.tedu.controller;

import cn.tedu.pojo.Game;
import cn.tedu.pojo.GameInfo;
import cn.tedu.service.BackGameListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by tedu on 2017/11/26.
 */
@Controller
public class BackGameListController {

    @Autowired
    private BackGameListService backGameListService;

    @RequestMapping("gamelist")
    public String gamelist(Model model){
        List<Game> list = backGameListService.findAll();
        model.addAttribute("games",list);
        return "/background/gamelist/index";
    }
    @RequestMapping("/gamelist/edit")
    public String edit(Integer gId,Model model){
        GameInfo gameInfo = backGameListService.findOneGameInfo(gId);
        model.addAttribute("gameInfo",gameInfo);
        return "/background/gamelist/edit";
    }
    @RequestMapping("/gamelist/index")
    public String savegl(GameInfo gameInfo){
        backGameListService.saveGameList(gameInfo);
        return "redirect:/gamelist";
    }
    @RequestMapping("/gamelist/find")
    public String find(String gName,Model model){
        List<Game> list = backGameListService.findGname(gName);
        model.addAttribute("games",list);
        return "/background/gamelist/index";
    }
}
