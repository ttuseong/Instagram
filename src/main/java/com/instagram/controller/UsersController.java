package com.instagram.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsersController {
	@RequestMapping("/user")
	public String user() {
		return "user";
	}
}
