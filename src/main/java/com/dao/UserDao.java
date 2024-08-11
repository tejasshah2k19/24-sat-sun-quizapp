package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.UserBean;

public class UserDao {

	String dbUrl = "jdbc:mysql://localhost:3306/quizapp";
	String dbUserName = "root";
	String dbPassword = "root";
	String dbDriverName = "com.mysql.cj.jdbc.Driver";

	// db insert query
	public void addUser(UserBean userBean) {
		try {

			// type 4 -> automatically ->
			// error

			Class.forName(dbDriverName);

			Connection con = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			PreparedStatement pstmt = con
					.prepareStatement("insert into users (firstName,email,password,role) values (?,?,?,?)");
			pstmt.setString(1, userBean.getFirstName());
			pstmt.setString(2, userBean.getEmail());
			pstmt.setString(3, userBean.getPassword());
			pstmt.setString(4, userBean.getRole());
			pstmt.executeUpdate();// insert

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public boolean authenticate(String email, String password) {
		try {
			Class.forName(dbDriverName);
			Connection con = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			PreparedStatement pstmt = con.prepareStatement("select * from users where email =? and password = ? ");
			pstmt.setString(1, email);
			pstmt.setString(2, password);

			ResultSet rs = pstmt.executeQuery(); // record
			if (rs.next()) {
				return true;// true
			} else {
				return false;// wrong
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

}
