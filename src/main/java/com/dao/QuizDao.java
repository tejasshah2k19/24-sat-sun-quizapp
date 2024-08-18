package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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

	public ArrayList<QuizBean> getAllQuiz() {
		ArrayList<QuizBean> allQuiz = new ArrayList<QuizBean>();
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from quiz order by startDate");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				QuizBean quiz = new QuizBean();

				quiz.setQuizId(rs.getInt("quizId"));
				quiz.setActive(rs.getBoolean("active"));
				quiz.setEndDate(rs.getString("endDate"));
				quiz.setMinusPoint(rs.getFloat("minusPoint"));
				quiz.setNegative(rs.getBoolean("negative"));
				quiz.setPerQuestionPoint(rs.getInt("perQuestionPoint"));
				quiz.setStartDate(rs.getString("startDate"));
				quiz.setTitle(rs.getString("title"));
				quiz.setTotalQuestion(rs.getInt("totalQuestion"));
				allQuiz.add(quiz);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return allQuiz;
	}

	public void deleteQuiz(Integer quizId) {

		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("delete from quiz where quizId = ? ");
			pstmt.setInt(1, quizId);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
