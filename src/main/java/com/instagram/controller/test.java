package com.instagram.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class test {
	@RequestMapping("/test")
	public String test() {
		return "/WEB-INF/views/test.jsp";
	}
}
