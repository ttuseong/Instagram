package com.instagram.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PostController {
	// 게시글 목록
	@RequestMapping("/post")
	public String user() {
		return "post";
	}

	// 글쓰기
	@RequestMapping("/write")
	public String write() {
		return "write";
	}
}
