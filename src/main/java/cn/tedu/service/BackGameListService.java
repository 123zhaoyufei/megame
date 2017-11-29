package cn.tedu.service;

import cn.tedu.pojo.Game;
import cn.tedu.pojo.GameInfo;

import java.util.List;

/**
 * Created by tedu on 2017/11/26.
 */
public interface BackGameListService {
    public List<Game> findAll();
    public GameInfo findOneGameInfo(Integer gId);
    public void saveGameList(GameInfo gi);
    public List<Game> findGname(String gName);
}
