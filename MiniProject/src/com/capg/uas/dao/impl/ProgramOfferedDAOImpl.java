package com.capg.uas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.capg.uas.dao.ProgramsOfferedDAO;
import com.capg.uas.dto.Participant;
import com.capg.uas.dto.ProgramsOffered;

public class ProgramOfferedDAOImpl implements ProgramsOfferedDAO{

	public List<ProgramsOffered> getProgramsOfferedList() {
 		List<ProgramsOffered> programsOffered = new ArrayList<ProgramsOffered>();
		PreparedStatement preparedStatement = null;
		Connection connection = null;
		StringBuffer query = new StringBuffer("select * from Programs_offered where 1=1 ");
		try {
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ProgramsOffered programOffered = new ProgramsOffered();
				programOffered.setProgramName(resultSet.getString("ProgramName"));
				programOffered.setScription(resultSet.getString("scription"));
				programOffered.setApplicantEligibility(resultSet.getString("applicant_eligibility"));
				programOffered.setDuration(resultSet.getInt("duration"));
				programOffered.setDegreeCertificateOffered(resultSet.getString("degree_certificate_offered"));
				
				
				programsOffered.add(programOffered);
			}
			resultSet.close();
		} catch (Exception e) {
			System.out.println("Token: " + e.getMessage());
		} finally {
			/* @TODO :- close connection */
		}
		return programsOffered;
	}
}
