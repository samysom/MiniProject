package com.capg.uas.service;

import java.util.List;

import com.capg.uas.dao.ApplicantDAO;
import com.capg.uas.dao.impl.ApplicantDAOImpl;
import com.capg.uas.dto.Applicant;

public class ApplicantManager {
	private ApplicantDAO applicantDAO;

	public ApplicantManager() {
		applicantDAO = new ApplicantDAOImpl();
	}

	public List<Applicant> getApplicantList(String scheduledProgramId, String applicationId) {
		return applicantDAO.getApplicantList(scheduledProgramId, applicationId);
	}

	public Applicant getApplicantStatus(int applicantId) {
		return applicantDAO.getApplicantStatus(applicantId);
	}

	public int saveApplicant(Applicant applicant) {
		return applicantDAO.saveApplication(applicant);
	}

	public boolean updateApplicationStatus(String status, String applicationId) {
		return applicantDAO.updateApplicationStatus(status, applicationId);
	}
}
