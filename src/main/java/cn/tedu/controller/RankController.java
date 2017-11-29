package cn.tedu.controller;

import cn.tedu.pojo.Game;
import cn.tedu.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by tedu on 2017/11/26.
 */
@Controller
public class RankController {
    @Autowired
    private GameService gameService;
    @RequestMapping("/torank")
    public String toRank(Model model){
        List<Game> gameRank=gameService.findAll();
        model.addAttribute("gameRank",gameRank);
        return "/rank/gameRank";
    }

}
