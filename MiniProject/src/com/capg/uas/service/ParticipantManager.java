package com.capg.uas.service;

import com.capg.uas.dao.ParticipantDAO;
import com.capg.uas.dao.impl.ParticipantDAOImpl;

public class ParticipantManager {
	private ParticipantDAO participantDao;

	public ParticipantManager() {
		participantDao = new ParticipantDAOImpl();
	}
}
