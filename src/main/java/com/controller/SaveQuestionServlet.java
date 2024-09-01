package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.QuestionBean;
import com.dao.QuestionDao;
import com.dao.QuizDao;

@WebServlet("/SaveQuestionServlet")
public class SaveQuestionServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ?
		Integer totalQuestion = Integer.parseInt(request.getParameter("totalQuestion"));
		QuestionDao questionDao = new QuestionDao();
		for (int i = 1; i <= totalQuestion; i++) {
			String qstn = request.getParameter("question" + i);
			String o1 = request.getParameter("o1q" + i);
			String o2 = request.getParameter("o2q" + i);
			String o3 = request.getParameter("o3q" + i);
			String o4 = request.getParameter("o4q" + i);
			String correctAns = request.getParameter("correctAns"+i);
			Integer quizId = Integer.parseInt(request.getParameter("quizId"));

			QuestionBean questionBean = new QuestionBean();
			questionBean.setQuestion(qstn);
			questionBean.setO1(o1);
			questionBean.setO2(o2);
			questionBean.setO3(o3);
			questionBean.setO4(o4);
			questionBean.setCorrectAns(correctAns);
			questionBean.setQuizId(quizId);
			questionDao.addQuestion(questionBean);
		}

		
		response.sendRedirect("ListQuizServlet");
	}

}
