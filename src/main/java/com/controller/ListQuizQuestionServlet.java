package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.QuestionBean;
import com.dao.QuestionDao;

@WebServlet("/ListQuizQuestionServlet")
public class ListQuizQuestionServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer quizId = Integer.parseInt(request.getParameter("quizId"));

		QuestionDao questionDao = new QuestionDao();
		ArrayList<QuestionBean> questions = questionDao.getQuestionsByQuiz(quizId);

		request.setAttribute("questions", questions);
		
		request.getRequestDispatcher("ListQuizQuestion.jsp").forward(request, response);
	}
}
