package com.capg.uas.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.capg.uas.dto.Applicant;
import com.capg.uas.service.ApplicantManager;

@WebServlet("/viewApplication")
public class ViewApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ApplicantManager applicantManager;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		applicantManager = new ApplicantManager();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String role = request.getParameter("role");
		String scheduledProgramId = request.getParameter("scheduledProgramId");
		String page = request.getParameter("page");
		String status = request.getParameter("status");
		String applicationId = request.getParameter("applicationId");
		if (page == null) {
			page = "";
		}
		request.setAttribute("role", role);
		if (page.equalsIgnoreCase("updateApplicationStatus")) {
			applicantManager.updateApplicationStatus(status, applicationId);
			response.sendRedirect("viewApplication?role=" + role + "&scheduledProgramId=" + scheduledProgramId);
			return;
		}
		List<Applicant> applicants = applicantManager.getApplicantList(scheduledProgramId, applicationId);
		request.setAttribute("applicants", applicants);
		request.getRequestDispatcher("ViewApplications.jsp").forward(request, response);
	}
}
