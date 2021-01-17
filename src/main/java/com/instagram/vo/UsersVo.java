package com.instagram.vo;

public class UsersVo {
	private int userNo;
	private String userId;
	private String userPW;
	private String userPhone;
	private String userGender;
	private String userIntro;
	private String userLink;
	private String userImg;
	private String userName;
	private String userEmail;
	
	public UsersVo() {}
	
	public UsersVo(int userNo, String userId, String userPW, String userPhone, String userGender, String userIntro,
			String userLink, String userImg, String userName, String userEmail) {
		this.userNo = userNo;
		this.userId = userId;
		this.userPW = userPW;
		this.userPhone = userPhone;
		this.userGender = userGender;
		this.userIntro = userIntro;
		this.userLink = userLink;
		this.userImg = userImg;
		this.userName = userName;
		this.userEmail = userEmail;
	}
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserIntro() {
		return userIntro;
	}
	public void setUserIntro(String userIntro) {
		this.userIntro = userIntro;
	}
	public String getUserLink() {
		return userLink;
	}
	public void setUserLink(String userLink) {
		this.userLink = userLink;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	@Override
	public String toString() {
		return "UsersVo [userNo=" + userNo + ", userId=" + userId + ", userPW=" + userPW + ", userPhone=" + userPhone
				+ ", userGender=" + userGender + ", userIntro=" + userIntro + ", userLink=" + userLink + ", userImg="
				+ userImg + ", userName=" + userName + ", userEmail=" + userEmail + "]";
	}
	
	
	
}
