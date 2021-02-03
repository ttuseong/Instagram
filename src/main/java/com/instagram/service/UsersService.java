package com.instagram.service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.Random;

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
	
	public int reg(Map<String, Object> map) {
		int result;
		
		System.out.println(map.toString());
		
		changePW(map);
		
		System.out.println(map.toString());
		
		try {
			result = usersDao.reg(map);
			System.out.println(result);
		} catch (Exception e) {
			result = 0;
		}
		
		System.out.println(result);
		
		return result;
	}
	
	public void changePW(Map<String, Object> map) {
		try {
			String salt = generateSalt();
			
			byte[] bytes1 = ((String)map.get("userPw")).getBytes();
			byte[] bytes2 = new byte[bytes1.length + salt.getBytes().length];
			
			System.arraycopy(bytes1, 0, bytes2, 0, bytes1.length);
			System.arraycopy(salt.getBytes(), 0, bytes2, bytes1.length, salt.getBytes().length);
			
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(bytes2);
			
			byte[] byteData = md.digest();
			
			StringBuilder builder = new StringBuilder();
			for(int i = 0; i < byteData.length; i++) {
				builder.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));
			}
			
			map.put("userPw", builder.toString());
			map.put("salt", salt);
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	public static String generateSalt() {
        Random random = new Random();
        
        byte[] salt = new byte[8];
        random.nextBytes(salt);
        
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < salt.length; i++) {
            // byte 값을 Hex 값으로 바꾸기.
            sb.append(String.format("%02x",salt[i]));
        }
        
        return sb.toString();
    }
}

