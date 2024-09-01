package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.QuestionBean;
import com.util.DbConnection;

public class QuestionDao {

	public void addQuestion(QuestionBean questionBean) {
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(
					"insert into questions (o1,o2,o3,o4,correctAns,quizId,question) values (?,?,?,?,?,?,?)");
			pstmt.setString(1, questionBean.getO1());
			pstmt.setString(2, questionBean.getO2());
			pstmt.setString(3, questionBean.getO3());
			pstmt.setString(4, questionBean.getO4());
			pstmt.setString(5, questionBean.getCorrectAns());
			pstmt.setInt(6, questionBean.getQuizId());
			pstmt.setString(7, questionBean.getQuestion());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<QuestionBean> getQuestionsByQuiz(Integer quizId) {
		ArrayList<QuestionBean> questions = new ArrayList<QuestionBean>();

		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from questions where quizId = ? ");
			pstmt.setInt(1, quizId);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				QuestionBean questionBean = new QuestionBean();
				questionBean.setQuestionId(rs.getInt("questionId"));
				questionBean.setQuestion(rs.getString("question"));
				questionBean.setO1(rs.getString("o1"));
				questionBean.setO2(rs.getString("o2"));
				questionBean.setO3(rs.getString("o3"));
				questionBean.setO4(rs.getString("o4"));
				questionBean.setCorrectAns(rs.getString("correctAns"));
				questionBean.setQuizId(rs.getInt("quizId"));
				questions.add(questionBean);

			}
			return questions;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
}
