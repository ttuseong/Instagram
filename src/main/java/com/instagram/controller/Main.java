package com.instagram.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Main {
	@RequestMapping("/main")
	public String main(HttpSession session) {
		
		if(session.getAttribute("authUser") == null) {
			return "login";
		} else {
			return "index";
		}
		
	}
}
