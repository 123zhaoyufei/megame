package cn.tedu.service;

import cn.tedu.mapper.GameMapper;
import cn.tedu.mapper.RankMapper;
import cn.tedu.pojo.Comment;
import cn.tedu.pojo.Game;
import cn.tedu.pojo.GameInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by tedu on 2017/11/27.
 */
@Service
public class GameServiceImpl implements GameService{
    @Autowired
    public GameMapper gameMapper;
    @Autowired
    private RankMapper rankMapper;
    public GameInfo findOne(Integer gId) {
        return gameMapper.findOne(gId);
    }

    public List<Game> findAll() {
        return rankMapper.findAll();
    }

    public List<Game> findAllGames(String gClass) {
        return gameMapper.findAllGames(gClass);
    }

    public GameInfo findCom(String infoId) {
        Comment comment=new Comment();
        comment.setInfoId(infoId);
        return gameMapper.findCom(infoId);
    }

    public List<GameInfo> findPic() {
        return gameMapper.findPic();
    }

    public void saveComment(Comment comment,String infoId) {
        comment.setcId(UUID.randomUUID().toString());
        Date date=new Date();
        comment.setTime(date);
        comment.setInfoId(infoId);
        gameMapper.saveComment(comment);
    }
}
