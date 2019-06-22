package com.capg.uas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.capg.uas.dao.ParticipantDAO;
import com.capg.uas.dto.Participant;

public class ParticipantDAOImpl implements ParticipantDAO {

	public List<Participant> getParticipantList() {
		List<Participant> participants = new ArrayList<Participant>();
		PreparedStatement preparedStatement = null;
		Connection connection = null;
		StringBuffer query = new StringBuffer("select * from participant where 1=1 ");
		try {
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Participant participant = new Participant();
				participant.setParticipant(resultSet.getString("participant"));
				participant.setEmailId(resultSet.getString("email_id"));
				participant.setApplicationId(resultSet.getInt("application_id"));
				participant.setScheduledProgramId(resultSet.getString("scheduled_program_id"));
				participants.add(participant);
			}
			resultSet.close();
		} catch (Exception e) {
			System.out.println("Token: " + e.getMessage());
		} finally {
			/* @TODO :- close connection */
		}
		return participants;
	}

}
