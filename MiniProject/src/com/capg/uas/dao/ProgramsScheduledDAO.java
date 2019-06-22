package com.capg.uas.dao;

import java.util.List;

import com.capg.uas.dto.ProgramsScheduled;

public interface ProgramsScheduledDAO {
	public List<ProgramsScheduled> getProgramsScheduledList();

	public boolean saveProgram(ProgramsScheduled programsScheduled);

	public boolean deleteProgram(String scheduledProgramId);
}
