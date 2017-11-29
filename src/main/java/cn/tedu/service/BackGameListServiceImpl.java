package cn.tedu.service;

import cn.tedu.mapper.GameInfoMapper;
import cn.tedu.mapper.GameMapper;
import cn.tedu.pojo.Game;
import cn.tedu.pojo.GameInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by tedu on 2017/11/26.
 */
@Service
public class BackGameListServiceImpl implements BackGameListService {

    @Autowired
    private GameMapper gameMapper;
    @Autowired
    private GameInfoMapper gameInfoMapper;

    public List<Game> findAll() {
        return gameMapper.findAll();
    }

    public GameInfo findOneGameInfo(Integer gId) {
        return gameMapper.findOneGameInfo(gId);
    }

    public void saveGameList(GameInfo gameInfo) {
        gameInfoMapper.saveGameInfo(gameInfo);
        gameMapper.saveGame(gameInfo);
    }

    public List<Game> findGname(String gName) {
        return gameMapper.findGname(gName);
    }
}
