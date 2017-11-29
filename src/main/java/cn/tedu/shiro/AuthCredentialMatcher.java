package cn.tedu.shiro;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

import cn.tedu.tool.Md5Utils;

public class AuthCredentialMatcher extends SimpleCredentialsMatcher {
	@Override
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		UsernamePasswordToken loginToken=(UsernamePasswordToken)token;
		String password=String.valueOf(loginToken.getPassword());
		password=Md5Utils.getMd5(password, loginToken.getUsername());
		loginToken.setPassword(password.toCharArray());
		return super.doCredentialsMatch(token, info);
	}
}
