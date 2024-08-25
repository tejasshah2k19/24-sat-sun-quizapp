package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.QuizBean;
import com.dao.QuizDao;

@WebServlet("/UserListQuizServlet")
public class UserListQuizServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// db active quiz -> date

		QuizDao quizDao = new QuizDao();
		ArrayList<QuizBean> allQuiz = quizDao.getAllActiveQuiz();
		request.setAttribute("allQuiz", allQuiz);

		
		request.getRequestDispatcher("UserListQuiz.jsp").forward(request, response);;
	}
}
