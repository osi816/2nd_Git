package kr.co.bitnews.domain;

import java.util.Date;

public class User {
	private String userId;
    private String userPw;
    private String userName;
    private String userEmail;
<<<<<<< HEAD
    private Date acceptTime;

	public Date getAcceptTime() {
		return acceptTime;
	}

	public void setAcceptTime(Date acceptTime) {
		this.acceptTime = acceptTime;
=======
    
    private int user_withdraw;

	public int getUser_withdraw() {
		return user_withdraw;
	}

	public void setUser_withdraw(int user_withdraw) {
		this.user_withdraw = user_withdraw;
>>>>>>> 40b2d2b8f4f28271654386707df7e580ae9ad35b
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
