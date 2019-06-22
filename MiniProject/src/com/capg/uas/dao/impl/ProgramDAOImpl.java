package com.capg.uas.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

import com.capg.uas.dao.ProgramDAO;

public class ProgramDAOImpl implements ProgramDAO{

	@Override
	public void addProgram() {

		Scanner sc = new Scanner(System.in);
		System.out.println("entre the ProgramName");
		String programName = sc.next();
		System.out.println("entre the  description");
		String description = sc.next();
		System.out.println("entre the  applicant_eligibility");
		int applicantEligibility = sc.nextInt();
		System.out.println("entre the duration");
		String duration = sc.next();
		System.out.println("entre the degree_certificate_offered");
		String degree_certificate_offered = sc.next();





		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			System.out.println("Hi");
			Class.forName("com.mysql.jdbc.Driver").newInstance();			
			String dburl = "jdbc:mysql://localhost:3306/uas";
			con = DriverManager.getConnection(dburl, "root", "root");
			System.out.println(con);
			String query = "insert into programs_offered value(?,?,?,?,?)";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, programName);
			pstmt.setString(2, description);
			pstmt.setInt(3, applicantEligibility);
			pstmt.setString (4, duration);
			pstmt.setString(5, degree_certificate_offered);
			int count = pstmt.executeUpdate();
			if (count > 0) {
				System.out.println("data succ");
			} else {
				System.out.println("wrong ");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateProgram() {
		Connection con = null;
		Statement cstmt = null;
		ResultSet rs = null;
		try {
			String dburl = "jdbc:mysql://localhost:3306/uas";
			con = DriverManager.getConnection(dburl, "root", "root");
			String updatequery = "UPDATE `programs_offered` SET `name` = 'ravi' WHERE `sno` = 1";
			cstmt = con.createStatement();
			cstmt.executeUpdate(updatequery);
			System.out.println("Success");
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	@Override
	public void deletProgram() {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement cstmt = null;
		ResultSet rs = null;
		try {
			String dburl = "jdbc:mysql://localhost:3306/uas";
			con = DriverManager.getConnection(dburl, "root", "root");
			String deletequery = "DELETE from `programs_offered` where  `name` = 'csk'";
			cstmt = con.createStatement();
			cstmt.executeUpdate(deletequery);
			System.out.println(" Deleted Success");
		} catch (Exception e) {
			e.printStackTrace();
		}


	}

	@Override
	public void readProgram() {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			String dburl = "jdbc:mysql://localhost:3306/uas";
			con = DriverManager.getConnection(dburl, "root", "root");
			String selectquery = "Select * from `programs_offered`";
			stmt = con.createStatement();
			rs = stmt.executeQuery(selectquery);
			while (rs.next()) {
				int sno = rs.getInt("sno");
				String name = rs.getString("name");
				String cap = rs.getString("cap");
				int point = rs.getInt("point");
				System.out.println(sno);
				System.out.println(name);
				System.out.println(cap);
				System.out.println(point);
				System.out.println("**********");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void readAllProgram() {
		// TODO Auto-generated method stub

	}

}
