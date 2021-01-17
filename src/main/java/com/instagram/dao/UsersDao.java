package com.instagram.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.instagram.vo.UsersVo;

@Repository
public class UsersDao {
	@Autowired
	SqlSession session;
	
	public List<UsersVo> getTest(){
		return session.selectList("users.test");
	}
}
