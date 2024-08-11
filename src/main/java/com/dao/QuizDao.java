package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.util.DbConnection;

public class QuizDao {

	public void addQuiz() {

		try {
			Connection con = DbConnection.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement("insert into quiz");
		} catch (Exception e) {

		}
	}
}
