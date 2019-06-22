package com.capg.uas.dao;

import java.util.List;

import com.capg.uas.dto.Applicant;

public interface ApplicantDAO {
	public List<Applicant> getApplicantList(String scheduledProgramId, String applicationId);
	
	public int saveApplication(Applicant applicant);

	public Applicant getApplicantStatus(int applicantId);

	public boolean updateApplicationStatus(String status, String applicationId);
}
