package com.instagram.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Message {
	@RequestMapping("/message")
	public String message() {
		return "message";
	}
}
