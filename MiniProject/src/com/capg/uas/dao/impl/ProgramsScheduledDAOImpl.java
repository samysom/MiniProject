package com.capg.uas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.capg.uas.dao.ProgramsScheduledDAO;
import com.capg.uas.dto.ProgramsScheduled;
import com.capg.uas.util.DatabaseConnection;

public class ProgramsScheduledDAOImpl implements ProgramsScheduledDAO {
	public List<ProgramsScheduled> getProgramsScheduledList() {
		List<ProgramsScheduled> programsScheduled = new ArrayList<ProgramsScheduled>();
		PreparedStatement preparedStatement = null;
		Connection connection = null;
		StringBuffer query = new StringBuffer("select * from Programs_scheduled where 1=1 ");
		try {
			connection = DatabaseConnection.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(query.toString());
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ProgramsScheduled programScheduled = new ProgramsScheduled();
				programScheduled.setScheduledProgramId(resultSet.getString("Scheduled_program_id"));
				programScheduled.setProgramName(resultSet.getString("ProgramName"));
				programScheduled.setLocation(resultSet.getString("Location"));
				programScheduled.setStartDate(resultSet.getDate("start_date"));
				programScheduled.setEndDate(resultSet.getDate("end_date"));
				programScheduled.setSessionsPerWeek(resultSet.getInt("sessions_per_week"));
				programsScheduled.add(programScheduled);
			}
			resultSet.close();
		} catch (Exception e) {
			System.out.println("Token: " + e.getMessage());
		} finally {
			/* @TODO :- close connection */
		}
		return programsScheduled;
	}

	@Override
	public boolean saveProgram(ProgramsScheduled programsScheduled) {
		StringBuffer query = null;
		Random random = new Random();
		String scheduledProgramId = Integer.toString(random.nextInt(99999));
		query = new StringBuffer("INSERT INTO programs_scheduled"
				+ " (Scheduled_program_id, ProgramName,Location,start_date,end_date, sessions_per_week)"
				+ "VALUES (?,?,?,?,?,?)");
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = DatabaseConnection.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(query.toString());
			preparedStatement.setString(1, scheduledProgramId);
			preparedStatement.setString(2, programsScheduled.getProgramName());
			preparedStatement.setString(3, programsScheduled.getLocation());
			preparedStatement.setString(4, null);
			preparedStatement.setString(5, null);
			preparedStatement.setInt(6, programsScheduled.getSessionsPerWeek());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			DatabaseConnection.closePreparedStatement(preparedStatement);
			DatabaseConnection.closeDBConnection(connection);
		}
		return true;
	}

	@Override
	public boolean deleteProgram(String scheduledProgramId) {
		PreparedStatement preparedStatement = null;
		Connection connection = null;
		StringBuffer query = new StringBuffer(
				"delete from Programs_scheduled where Scheduled_program_id='" + scheduledProgramId + "'");
		try {
			connection = DatabaseConnection.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(query.toString());
			preparedStatement.execute();
		} catch (Exception e) {
			System.out.println("Token: " + e.getMessage());
			return false;
		} finally {
			DatabaseConnection.closePreparedStatement(preparedStatement);
			DatabaseConnection.closeDBConnection(connection);
		}
		return true;

	}
}
