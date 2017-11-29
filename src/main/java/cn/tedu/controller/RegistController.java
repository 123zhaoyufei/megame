package cn.tedu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.User;
import cn.tedu.service.UserService;
import cn.tedu.tool.Md5Utils;
@Controller
public class RegistController {
	@Autowired
	private UserService userService;
	 @RequestMapping("/regist")
	public String regist(User user,Model model){
		User us=userService.findOneByUsername(user.getUserUsername());
		if(us!=null){
			model.addAttribute("info","用户名已存在");
			return "/login/login";
		}
		String password = user.getUserPassword();
		password=Md5Utils.getMd5(password, user.getUserUsername());
		user.setUserPassword(password);
		userService.regist(user);
		return "/index";
	}
}
