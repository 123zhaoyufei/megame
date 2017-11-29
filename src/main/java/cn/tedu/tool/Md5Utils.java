package cn.tedu.tool;

import org.apache.shiro.crypto.hash.Md5Hash;

public class Md5Utils {
	public static String getMd5(String password,String salt) {
		Md5Hash mh=new Md5Hash(password,salt,1);
		return mh.toString();
	}
} 
