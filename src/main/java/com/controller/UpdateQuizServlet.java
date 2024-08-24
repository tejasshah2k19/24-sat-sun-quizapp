package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.QuizBean;
import com.dao.QuizDao;

@WebServlet("/UpdateQuizServlet")
public class UpdateQuizServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");
		Integer totalQuestion = Integer.parseInt(request.getParameter("totalQuestion"));
		Integer perQuestionPoint = Integer.parseInt(request.getParameter("perQuestionPoint"));
		Boolean negative = Boolean.parseBoolean(request.getParameter("negative"));
		Float minusPoint = Float.parseFloat(request.getParameter("minusPoint"));
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		boolean active = Boolean.parseBoolean(request.getParameter("active"));

		Integer quizId = Integer.parseInt(request.getParameter("quizId"));
		
		QuizBean quizBean = new QuizBean();

		quizBean.setQuizId(quizId);
		quizBean.setActive(active);
		quizBean.setEndDate(endDate);
		quizBean.setMinusPoint(minusPoint);
		quizBean.setNegative(negative);
		quizBean.setPerQuestionPoint(perQuestionPoint);
		quizBean.setStartDate(startDate);
		quizBean.setTitle(title);
		quizBean.setTotalQuestion(totalQuestion);

		QuizDao quizDao = new QuizDao();
		quizDao.updateQuiz(quizBean);
		
		//redirect -> list
		response.sendRedirect("ListQuizServlet");
		
	}
}
