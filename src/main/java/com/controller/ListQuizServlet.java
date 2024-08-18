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

@WebServlet("/ListQuizServlet")
public class ListQuizServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		QuizDao quizDao = new QuizDao();

		ArrayList<QuizBean> allQuiz = quizDao.getAllQuiz();
		request.setAttribute("allQuiz", allQuiz);
		
		request.getRequestDispatcher("ListQuiz.jsp").forward(request, response);
	}

}
