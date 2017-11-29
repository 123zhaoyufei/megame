package cn.tedu.service;

import cn.tedu.pojo.User;

import java.util.List;

/**
 * Created by tedu on 2017/11/27.
 */
public interface BackUserListService {
    public List<User> findAll();
    public User findOne(String userId);
    public void saveUser(User user);
    public void addUser(User user);
    public List<User> findUsername(String username);
}
