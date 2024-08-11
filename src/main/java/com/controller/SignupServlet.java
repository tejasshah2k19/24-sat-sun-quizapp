package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.dao.UserDao;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("firstName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserDao userDao = new UserDao();
		
		UserBean userBean = new UserBean();
		userBean.setFirstName(firstName);
		userBean.setEmail(email);
		userBean.setPassword(password);
		userBean.setRole("USER");
		
		
		userDao.addUser(userBean);

		response.sendRedirect("Login.jsp");

	}

}
