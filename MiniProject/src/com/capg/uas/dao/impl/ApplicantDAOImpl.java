package com.capg.uas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.capg.uas.dao.ApplicantDAO;
import com.capg.uas.dto.Applicant;
import com.capg.uas.util.DatabaseConnection;

public class ApplicantDAOImpl implements ApplicantDAO {

	public List<Applicant> getApplicantList(String scheduledProgramId, String applicationId) {
		List<Applicant> applicants = new ArrayList<Applicant>();
		PreparedStatement preparedStatement = null;
		Connection connection = null;
		StringBuffer query = new StringBuffer("select * from applicant where 1=1 ");
		if (((applicationId == null)) && (scheduledProgramId != null)) {
			query.append(" and Scheduled_program_id=?");
		}
		if (applicationId != null) {
			query.append(" and application_id=" + applicationId);
		}
		try {
			// @TODO :- get connection object
			connection = DatabaseConnection.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(query.toString());
			if (scheduledProgramId != null) {
				preparedStatement.setString(1, scheduledProgramId);
			}
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Applicant applicant = new Applicant();
				applicant.setApplicationId(resultSet.getInt("application_id"));
				applicant.setFullName(resultSet.getString("full_name"));
				applicant.setDateOfBirth(resultSet.getDate("date_of_birth"));
				applicant.setHighestQualification(resultSet.getString("highest_qualification"));
				applicant.setMarksObtained(resultSet.getInt("marks_obtained"));
				applicant.setGoals(resultSet.getString("goals"));
				applicant.setEmailId(resultSet.getString("email_id"));
				applicant.setScheduledProgramId(resultSet.getString("Scheduled_program_id"));
				applicant.setStatus(resultSet.getString("status"));
				applicant.setDateOfInterview(resultSet.getDate("Date_of_Interview"));
				applicants.add(applicant);

			}
			resultSet.close();
		} catch (Exception e) {
			System.out.println("Token: " + e.getMessage());
		} finally {
			/* @TODO :- close connection */
		}
		return applicants;
	}

	@Override
	public int saveApplication(Applicant applicant) {
		StringBuffer query = null;
		int recordsUpdated = 0;
		Random random = new Random();
		int applicationId = random.nextInt(999999);
		query = new StringBuffer("INSERT INTO applicant(application_id,full_name,"
				+ "date_of_birth,highest_qualification,marks_obtained,goals,email_id,"
				+ "Scheduled_program_id,status,Date_Of_Interview)VALUES (?,?,?,?,?,?,?,?,?,?)");
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = DatabaseConnection.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(query.toString());
			preparedStatement.setInt(1, applicationId);
			preparedStatement.setString(2, applicant.getFullName());
			preparedStatement.setDate(3, applicant.getDateOfBirth());
			preparedStatement.setString(4, applicant.getHighestQualification());
			preparedStatement.setInt(5, applicant.getMarksObtained());
			preparedStatement.setString(6, applicant.getGoals());
			preparedStatement.setString(7, applicant.getEmailId());
			preparedStatement.setString(8, applicant.getScheduledProgramId());
			preparedStatement.setString(9, applicant.getStatus());
			preparedStatement.setDate(10, applicant.getDateOfInterview());
			recordsUpdated = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DatabaseConnection.closePreparedStatement(preparedStatement);
			DatabaseConnection.closeDBConnection(connection);
		}
		if (recordsUpdated > 0) {
			return applicationId;
		} else {
			return 0;
		}

	}

	@Override
	public Applicant getApplicantStatus(int applicantId) {
		// TODO :
		return null;
	}

	@Override
	public boolean updateApplicationStatus(String status, String applicationId) {
		PreparedStatement preparedStatement = null;
		Connection connection = null;
		StringBuffer query = new StringBuffer("update applicant set status=? where application_id=? ");
		try {
			// @TODO :- get connection object
			connection = DatabaseConnection.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(query.toString());
			preparedStatement.setString(1, status);
			preparedStatement.setString(2, applicationId);
			preparedStatement.execute();
		} catch (Exception e) {
			System.out.println("Token: " + e.getMessage());
			return false;
		} finally {
			/* @TODO :- close connection */
		}
		return true;
	}
}
