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
public class BackUserCommSeriveImpl implements BackUserCommSerive{
    @Autowired
    private CommentMapper commentMapper;

    public List<Comment> findAllUser(String userId) {
        return commentMapper.findAllUser(userId);
    }
}
