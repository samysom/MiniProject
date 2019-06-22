package com.capg.uas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.capg.uas.dao.UserDAO;
import com.capg.uas.dto.User;
import com.capg.uas.util.DatabaseConnection;

public class UserDAOImpl implements UserDAO {
	public List<User> getUsersList() {
		List<User> users = new ArrayList<User>();
		PreparedStatement preparedStatement = null;
		Connection connection = null;
		StringBuffer query = new StringBuffer("select * from user where 1=1 ");
		try {
			connection = DatabaseConnection.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(query.toString());
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				User user = new User();
				user.setLoginId(resultSet.getString("login_id"));
				user.setPassword(resultSet.getString("password"));
				user.setRole(resultSet.getString("role"));
				users.add(user);
			}
			resultSet.close();
		} catch (Exception e) {
			System.out.println("Token: " + e.getMessage());
		} finally {
			/* @TODO :- close connection */
		}
		return users;
	}

	@Override
	public User isAuthenticated(String username, String password) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = new User();
		try {
			connection = DatabaseConnection.getInstance().getConnection();
			String query = "select * from user where login_id = ? and password = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				user.setLoginId(resultSet.getString("login_id"));
				user.setRole(resultSet.getString("role"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public static void main(String[] args) {
		User user = new UserDAOImpl().isAuthenticated("ravi", "123");
		System.out.println("Login Id : " + user.getLoginId() + " role:" + user.getRole());
	}

}