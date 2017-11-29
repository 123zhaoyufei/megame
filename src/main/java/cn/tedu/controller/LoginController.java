package cn.tedu.controller;

import cn.tedu.pojo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
	@RequestMapping("/tologin")
	public String tologin(){
		return "/login/login";
	}
	@RequestMapping("/login.action")
	public String login(String username,String password,HttpSession session,Model model){
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(username,password);
		try {
			subject.login(token);
			User user=(User)subject.getPrincipal();
			session.setAttribute("loginUser",user);
			return "/index";
		} catch (AuthenticationException e) {
			e.printStackTrace();
			model.addAttribute("errorInfo","用户名或密码错误");
			return "/login/login";
		}
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute("loginUser");
		Subject subject = SecurityUtils.getSubject();
		if (subject.isAuthenticated()) {
			subject.logout();
		}
		return "index";
	}
	
}
