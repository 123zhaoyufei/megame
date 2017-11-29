package cn.tedu.mapper;

import cn.tedu.pojo.GameInfo;
import org.apache.ibatis.annotations.Update;

/**
 * Created by tedu on 2017/11/27.
 */
public interface GameInfoMapper {
    @Update("update game_info set info_intro=#{introduction} where g_id=#{game.gId}")
    public void saveGameInfo(GameInfo gameInfo);
}
