package com.capg.uas.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.capg.uas.dto.ProgramsScheduled;
import com.capg.uas.service.ProgramsScheduledManager;

/**
 * Servlet implementation class ViewScheduledPrograms
 */
@WebServlet("/viewScheduledProgram")
public class ViewScheduledProgramsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProgramsScheduledManager programScheduledManager;

	@Override
	public void init() throws ServletException {
		super.init();
		programScheduledManager = new ProgramsScheduledManager();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page");
		String role = request.getParameter("role");
		if (page == null) {
			page = "";
		}
		if (page.equalsIgnoreCase("add")) {
			request.setAttribute("role", role);
			request.getRequestDispatcher("AddProgram.jsp").forward(request, response);
			return;
		} else if (page.equalsIgnoreCase("delete")) {
			String scheduledProgramId = request.getParameter("scheduledProgramId");
			programScheduledManager.deleteProgram(scheduledProgramId);
			response.sendRedirect("viewScheduledProgram?role=" + role);
			return;
		}
		List<ProgramsScheduled> listOfprogramScheduled = programScheduledManager.getProgramsScheduledList();
		request.setAttribute("role", role);
		request.setAttribute("listOfprogramScheduled", listOfprogramScheduled);
		request.getRequestDispatcher("ViewScheduledPrograms.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProgramsScheduled programsScheduled = new ProgramsScheduled();
		programsScheduled.setProgramName(request.getParameter("programName"));
		programsScheduled.setLocation(request.getParameter("location"));
		programsScheduled.setSessionsPerWeek(Integer.parseInt(request.getParameter("sessionsPerWeek")));
		programScheduledManager.saveProgram(programsScheduled);
		doGet(request, response);
		return;
	}
}
