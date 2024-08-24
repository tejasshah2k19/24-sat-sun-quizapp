package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.QuizBean;
import com.dao.QuizDao;

@WebServlet("/EditQuizServlet")
public class EditQuizServlet extends HttpServlet {

	// doGet
	// doPost ->form method : post submit

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// quizId
		Integer quizId = Integer.parseInt(request.getParameter("quizId"));
		// db select
		QuizDao quizDao = new QuizDao();
		QuizBean quizBean = quizDao.getQuizById(quizId);

		// send quiz data on jsp
		request.setAttribute("quiz", quizBean);
		
		// forward
		request.getRequestDispatcher("EditQuiz.jsp").forward(request, response);

	}
}
