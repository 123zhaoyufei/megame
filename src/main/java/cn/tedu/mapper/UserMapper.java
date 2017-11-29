package cn.tedu.mapper;

import cn.tedu.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by tedu on 2017/11/25.
 */
public interface UserMapper {
    @Select("select * from user where user_username=#{userUserName}")
    User findOneByUsername(String username);

    String findPermissionBy(String userId);
    @Insert("insert into user (user_id,user_username,user_password,user_name,user_role) values(#{userId},#{userUsername},#{userPassword},#{userName},'user')")
    Integer regist(User user);
    @Select("select user_role from user where user_id=#{userId}")
    String findRoleBy(String userId);

     List<User> findAll();
     User findOne(String userId);
     void saveUser(User user);
     void addUser(User user);
     List<User> findUsername(String username);

}
