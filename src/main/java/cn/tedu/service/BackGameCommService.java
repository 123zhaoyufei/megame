package cn.tedu.service;

import cn.tedu.pojo.Comment;

import java.util.List;

/**
 * Created by tedu on 2017/11/27.
 */
public interface BackGameCommService {
    public List<Comment> findAllGame(Integer gId);
    public void delete(String cId);
}
