package com.capg.uas.dao;

import java.util.List;

import com.capg.uas.dto.User;

public interface UserDAO {
	public List<User> getUsersList();

	public User isAuthenticated(String username, String password);
}
