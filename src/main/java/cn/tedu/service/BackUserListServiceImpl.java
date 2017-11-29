package cn.tedu.service;

import cn.tedu.mapper.UserMapper;
import cn.tedu.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * Created by tedu on 2017/11/27.
 */
@Service
public class BackUserListServiceImpl implements BackUserListService{

    @Autowired
    private UserMapper userMapper;

    public List<User> findAll() {
        return userMapper.findAll();
    }

    public User findOne(String userId) {
        return userMapper.findOne(userId);
    }

    public void addUser(User user) {
        user.setUserId(UUID.randomUUID().toString());
        userMapper.addUser(user);
    }

    public void saveUser(User user) {
        userMapper.saveUser(user);
    }

    public List<User> findUsername(String username) {
        return userMapper.findUsername(username);
    }
}
