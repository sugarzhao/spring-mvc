package com.framework.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.framework.domain.User;
import com.framework.service.IUserService;

/**
 * @author alun
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	public UserController() {
		System.out.println("UserController");
	}

	@Resource
	private IUserService userService;
	
	@RequestMapping("/showUser")
	public String toIndex(HttpServletRequest request,Model model) {
		System.out.println("UserController showUser");
		Integer id = Integer.parseInt(request.getParameter("id"));
        User user = userService.getUserById(id);
        model.addAttribute("user", user);  
        return "showUser";  
	}
	
}
