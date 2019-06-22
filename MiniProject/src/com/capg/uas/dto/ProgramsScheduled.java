  package com.capg.uas.dto;

import java.util.Date;

public class ProgramsScheduled {
	private String ScheduledProgramId; 
	private String ProgramName;
	private String Location;
	private Date startDate;
	private Date endDate; 
	private int sessionsPerWeek;
	public String getScheduledProgramId() {
		return ScheduledProgramId;
	}
	public void setScheduledProgramId(String scheduledProgramId) {
		ScheduledProgramId = scheduledProgramId;
	}
	public String getProgramName() {
		return ProgramName;
	}
	public void setProgramName(String programName) {
		ProgramName = programName;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getSessionsPerWeek() {
		return sessionsPerWeek;
	}
	public void setSessionsPerWeek(int sessionsPerWeek) {
		this.sessionsPerWeek = sessionsPerWeek;
	}
}
