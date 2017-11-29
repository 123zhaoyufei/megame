package cn.tedu.mapper;

import cn.tedu.pojo.Comment;
import cn.tedu.pojo.Game;
import cn.tedu.pojo.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by tedu on 2017/11/27.
 */
public interface CommentMapper {
    public List<Comment> findAllGame(Integer gId);

    @Delete("delete from game_comment where c_id=#{cId}")
    public void delete(String cId);

    public List<Comment> findAllUser(String userId);
}
