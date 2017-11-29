package cn.tedu.service;

import cn.tedu.pojo.Comment;

import java.util.List;

/**
 * Created by tedu on 2017/11/27.
 */
public interface BackUserCommSerive {
    public List<Comment> findAllUser(String userId);
}
