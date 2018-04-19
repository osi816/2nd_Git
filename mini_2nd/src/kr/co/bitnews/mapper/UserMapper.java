package kr.co.bitnews.mapper;

import kr.co.bitnews.domain.User;

public interface UserMapper {
	String selectUserById(String id);
	void insertUser(User user);
	void updateUser(User user);
}
