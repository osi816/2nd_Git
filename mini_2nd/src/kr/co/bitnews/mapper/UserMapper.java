package kr.co.bitnews.mapper;

import kr.co.bitnews.domain.User;

public interface UserMapper {
	User selectUserById(String id);
	void insertUser(User user);
	void updateUser(User user);
	String selectId(User user );
	String selectPw(User user );
}
