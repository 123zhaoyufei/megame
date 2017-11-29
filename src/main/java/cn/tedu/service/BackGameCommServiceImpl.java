package cn.tedu.service;

import cn.tedu.mapper.CommentMapper;
import cn.tedu.pojo.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by tedu on 2017/11/27.
 */
@Service
public class BackGameCommServiceImpl implements BackGameCommService{

    @Autowired
    private CommentMapper commentMapper;

    public List<Comment> findAllGame(Integer gId) {
        return commentMapper.findAllGame(gId);
    }

    public void delete(String cId) {
        commentMapper.delete(cId);
    }
}
