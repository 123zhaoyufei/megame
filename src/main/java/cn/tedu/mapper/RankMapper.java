package cn.tedu.mapper;

import cn.tedu.pojo.Game;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by tedu on 2017/11/26.
 */
public interface RankMapper {

    /**
     * 游戏排行，查询全部信息
     * @return 返回所有的游戏信息
     */
    @Select("select * from game order by g_score desc")
    List<Game> findAll();
}
