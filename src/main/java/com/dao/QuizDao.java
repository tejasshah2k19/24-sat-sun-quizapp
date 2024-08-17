package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.bean.QuizBean;
import com.util.DbConnection;

public class QuizDao {

	public void addQuiz(QuizBean quizBean) {

		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(
					"insert into quiz (title,totalQuestion,perQuestionPoint,negative,minusPoint,startDate,endDate,active) values (?,?,?,?,?,?,?,?)");
			pstmt.setString(1, quizBean.getTitle());
			pstmt.setInt(2, quizBean.getTotalQuestion());
			pstmt.setInt(3, quizBean.getPerQuestionPoint());
			pstmt.setBoolean(4, quizBean.getNegative());
			pstmt.setFloat(5, quizBean.getMinusPoint());
			pstmt.setString(6, quizBean.getStartDate());
			pstmt.setString(7, quizBean.getEndDate());
			pstmt.setBoolean(8, quizBean.getActive());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
