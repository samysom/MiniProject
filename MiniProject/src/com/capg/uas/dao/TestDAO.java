package com.capg.uas.dao;

import com.capg.uas.dao.impl.ProgramDAOImpl;
import com.capg.uas.dao.impl.UserDAOImpl;

public class TestDAO {

	public static void main(String[] args) {
		UserDAO dao=new UserDAOImpl();
		ProgramDAO dao1=new ProgramDAOImpl();
		//dao.addApplicant();
//		dao.updateApplicant();
		//dao.deletApplicant();
		//dao.readApplicant();
		//dao.memberLogin();
	//	dao.adminLogin();
		dao1.addProgram();
	}
	}
	


