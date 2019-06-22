package com.capg.uas.service;

import com.capg.uas.dao.ProgramsOfferedDAO;
import com.capg.uas.dao.impl.ProgramOfferedDAOImpl;

public class ProgramOfferedManager {
	private ProgramsOfferedDAO programsOfferedDAO;

	public ProgramOfferedManager() {
		programsOfferedDAO = new ProgramOfferedDAOImpl();
	}
}
