package com.instagram.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.instagram.dao.UsersDao;

@Service
public class UsersService {
	@Autowired
	UsersDao usersDao;
	
	public void test() {
		System.out.println(usersDao.getTest());
	}
	
	public void reg(Map<String, Object> map) {
		usersDao.reg(map);
	}
}
