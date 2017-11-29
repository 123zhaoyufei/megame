package cn.tedu.service;

import cn.tedu.pojo.Comment;
import cn.tedu.pojo.Game;
import cn.tedu.pojo.GameInfo;

import java.util.List;

/**
 * Created by tedu on 2017/11/27.
 */
public interface GameService {
    GameInfo findOne(Integer gId);
    List<Game> findAllGames(String gClass);

    /**
     * 游戏排行
     * @return
     */
    List<Game> findAll();

    GameInfo findCom(String infoId);
    List<GameInfo> findPic();

    void saveComment(Comment comment,String infoId);
}
