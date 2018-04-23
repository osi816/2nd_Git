package kr.co.bitnews.domain;

import java.util.Date;

public class User {
	private String userId;
    private String userPw;
    private String userName;
    private String userEmail;
    private Date acceptTime;
    private int user_withdraw;

	public Date getAcceptTime() {
		return acceptTime;
	}

	public void setAcceptTime(Date acceptTime) {
		this.acceptTime = acceptTime;
	}
    

	public int getUser_withdraw() {
		return user_withdraw;
	}

	public void setUser_withdraw(int user_withdraw) {
		this.user_withdraw = user_withdraw;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
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

}
