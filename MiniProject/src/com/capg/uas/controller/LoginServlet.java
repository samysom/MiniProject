package com.capg.uas.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.capg.uas.dto.User;
import com.capg.uas.service.UserManager;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserManager userManager;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		userManager = new UserManager();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = userManager.isAuthenticated(username, password);
		String role = user.getRole();
		if (role != null) {
			response.sendRedirect("viewScheduledProgram?role=" + role);
			return;
		} else {
			request.getRequestDispatcher("loginError.jsp").forward(request, response);
		}
	}
}
