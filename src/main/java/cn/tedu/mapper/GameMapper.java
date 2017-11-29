package cn.tedu.mapper;

import cn.tedu.pojo.Comment;
import cn.tedu.pojo.Game;
import cn.tedu.pojo.GameInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * Created by tedu on 2017/11/25.
 */
public interface GameMapper {
    GameInfo findOne(Integer gId);
    List<Game> findAllGames(String gClass);

    @Select("select * from game")
    public List<Game> findAll();

    public GameInfo findOneGameInfo(Integer gId);

    @Update("update game set g_name=#{game.gName},g_class=#{game.gClass} where g_id=#{game.gId}")
    public void saveGame(GameInfo gameInfo);

    @Select("select * from game where g_name like concat(concat('%',#{gName},'%'))")
    public List<Game> findGname(String gName);

    GameInfo findCom(String infoId);
    List<GameInfo> findPic();
    @Insert("insert into game_comment (c_content,c_time,c_user_id,c_id,info_id) values (#{content},#{time},#{userId},#{cId},#{infoId})")
    void saveComment(Comment comment);

}
