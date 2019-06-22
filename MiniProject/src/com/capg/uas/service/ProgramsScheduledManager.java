package com.capg.uas.service;

import java.util.List;

import com.capg.uas.dao.ProgramsScheduledDAO;
import com.capg.uas.dao.impl.ProgramsScheduledDAOImpl;
import com.capg.uas.dto.ProgramsScheduled;

public class ProgramsScheduledManager {

	private ProgramsScheduledDAO programsScheduledDAO;

	public ProgramsScheduledManager() {
		programsScheduledDAO = new ProgramsScheduledDAOImpl();
	}

	public List<ProgramsScheduled> getProgramsScheduledList() {
		return programsScheduledDAO.getProgramsScheduledList();
	}

	public boolean saveProgram(ProgramsScheduled programsScheduled) {
		return programsScheduledDAO.saveProgram(programsScheduled);
	}

	public boolean deleteProgram(String scheduledProgramId) {
		return programsScheduledDAO.deleteProgram(scheduledProgramId);
	}

}
