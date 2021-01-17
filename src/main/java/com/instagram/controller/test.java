package com.instagram.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.instagram.service.UsersService;

@Controller
public class test {
	@Autowired
	UsersService userService;
	
	@RequestMapping("/test")
	public String test() {
		userService.test();
		return "test";
	}
}
