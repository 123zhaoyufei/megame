package cn.tedu.service;

import cn.tedu.pojo.User;

public interface UserService {

	User findOneByUsername(String username);

	String findPermissionBy(String userId);

	void regist(User user);

	String findRoleBy(String userId);

	

}
