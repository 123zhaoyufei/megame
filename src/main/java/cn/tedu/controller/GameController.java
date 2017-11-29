package cn.tedu.controller;

import cn.tedu.pojo.Comment;
import cn.tedu.pojo.Game;
import cn.tedu.pojo.GameInfo;
import cn.tedu.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by tedu on 2017/11/25.
 */
@Controller
public class GameController {
    @Autowired
    private GameService gameService;
    @RequestMapping("/toview")
    public String toview(Model model,Integer gId){
        List<Game> gameRank=gameService.findAll();
        model.addAttribute("gameRank",gameRank);

        GameInfo gameInfo = gameService.findOne(gId);
        model.addAttribute("gameInfo",gameInfo);
        System.out.println(gameInfo.getGame().getgId());
        System.out.println();
        System.out.println();
        System.out.println();
        return "/game/gameInfo";
    }
    @RequestMapping("/list")
    public String list(String gClass,Model model){
        System.out.println(gClass);
        List<Game> games=gameService.findAllGames(gClass);
        model.addAttribute("games", games);

        for (Game game:games){
            System.out.println(game);
        }

        return "/game/gameList";
    }
    @RequestMapping("/comment")
    public String comment(Model model,String infoId){
        List<GameInfo> gamePic=gameService.findPic();
        model.addAttribute("gamePic",gamePic);

        GameInfo gameCom = gameService.findCom(infoId);
        model.addAttribute("gameCom",gameCom);
        model.addAttribute("infoId",infoId);
        return "/game/comment";
    }
    @RequestMapping("/tocomment")
    public String toComment(Comment comment, Model model, String infoId, String id){
        List<GameInfo> gamePic=gameService.findPic();
        model.addAttribute("gamePic",gamePic);
        if(StringUtils.isEmpty(comment.getContent())){
            if(StringUtils.isEmpty(infoId)){
                infoId=id;
            }
            GameInfo gameCom = gameService.findCom(infoId);
            model.addAttribute("gameCom",gameCom);
            //session.setAttribute("gameCom",gameCom);
            return "game/comment";
        }
        if(StringUtils.isEmpty(infoId)){
            infoId=id;
        }
        gameService.saveComment(comment,infoId);
        GameInfo gameCom = gameService.findCom(infoId);
        model.addAttribute("gameCom",gameCom);
        return "game/comment";
    }

}
