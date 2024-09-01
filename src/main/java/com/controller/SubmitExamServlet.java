package com.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SubmitExamServlet")
public class SubmitExamServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Enumeration<String> e = request.getParameterNames();//

		while (e.hasMoreElements()) {
			String q = e.nextElement();
			String ans = request.getParameter(q);
			
			System.out.println(q+" => "+ans);
		}
	}
	//quizId 	questionId	yourAns		status				studentId
	//11		17			0		  	Correct / Wrong 	12
}
