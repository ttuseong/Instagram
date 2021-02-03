package com.instagram.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.instagram.service.UsersService;

@Controller
public class Main {
	@Autowired
	UsersService usersService;
	
	@RequestMapping("/")
	public String main(HttpSession session) {
		
		if(session.getAttribute("authUser") == null) {
			return "login";
		} else {
			return "index";
		}
		
	}
	
	@RequestMapping("/regPage")
	public String regPage() {
		return "reg";
	}
	
	@RequestMapping("/reg")
	@ResponseBody
	public String reg(@RequestBody Map<String, Object> data) {
		
		usersService.reg(data);
		return "1";
	}
}
