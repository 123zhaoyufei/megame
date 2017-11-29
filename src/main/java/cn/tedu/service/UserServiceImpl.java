package cn.tedu.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.UserMapper;
import cn.tedu.pojo.User;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	public User findOneByUsername(String username) {
		return userMapper.findOneByUsername(username);
	}
	public String findPermissionBy(String userId) {
		return userMapper.findPermissionBy(userId);
	}
	public void regist(User user) {
		user.setUserId(UUID.randomUUID().toString());
		userMapper.regist(user);
	}
	public String findRoleBy(String userId) {
		return userMapper.findRoleBy(userId);
	}
	

}
