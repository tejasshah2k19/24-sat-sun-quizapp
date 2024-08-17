package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.dao.UserDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// userDao
		// select * from users where email = ? and password = ?

		UserDao userDao = new UserDao();
		UserBean userBean = userDao.authenticate(email, password);

		if (userBean == null) {
			response.sendRedirect("Login.jsp");
		} else {
			if (userBean.getRole().equals("USER")) {
				response.sendRedirect("Home.jsp");
			} else if (userBean.getRole().equals("ADMIN")) {
				response.sendRedirect("AdminHome.jsp");
			}
		}

	}
}
