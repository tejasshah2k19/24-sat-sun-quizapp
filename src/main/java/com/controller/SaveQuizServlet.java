package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/SaveQuizServlet")
public class SaveQuizServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");
		Integer totalQuestion = Integer.parseInt(request.getParameter("totalQuestion"));
		Integer perQuestionPoint = Integer.parseInt(request.getParameter("perQuestionPoint"));
		String negative = request.getParameter("negative");
		Float minusPoint = Float.parseFloat(request.getParameter("minusPoint"));
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String active = request.getParameter("active");
		
		
	}
}
