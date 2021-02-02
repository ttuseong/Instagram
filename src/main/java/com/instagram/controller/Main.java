package com.instagram.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping("reg")
	public String reg() {
		return "reg";
	}
	
	@RequestMapping("/regSucces")
	@ResponseBody
	public void regSucces(@RequestBody String data) {
		System.out.println(data);
		System.out.println("test");
	}
}
