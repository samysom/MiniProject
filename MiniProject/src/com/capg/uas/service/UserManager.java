package com.capg.uas.service;

import com.capg.uas.dao.UserDAO;
import com.capg.uas.dao.impl.UserDAOImpl;
import com.capg.uas.dto.User;

public class UserManager {
	private UserDAO userDAO;
	
	public UserManager() {
		userDAO = new UserDAOImpl();
	}
	
	public User isAuthenticated(String username, String password){
		return userDAO.isAuthenticated(username, password);
	}
	
	
	
	
	
	
}
