package cn.tedu.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.SimpleAccountRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.tedu.pojo.User;
import cn.tedu.service.UserService;
@Component
public class AuthRealm extends SimpleAccountRealm {
	@Autowired
	private UserService userService;
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		UsernamePasswordToken loginToken=(UsernamePasswordToken)token;
		User user=userService.findOneByUsername(loginToken.getUsername());
		AuthenticationInfo  info=new SimpleAuthenticationInfo(user,user.getUserPassword(),this.getName());
		return info;
	}
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		User user = (User)principals.getPrimaryPrincipal();
		SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		String role=userService.findRoleBy(user.getUserId());
		info.addRole(role);
		return info;
		
	}
}
