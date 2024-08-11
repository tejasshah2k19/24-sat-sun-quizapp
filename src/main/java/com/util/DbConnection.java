package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	public static Connection getConnection() {

		String dbUrl = "jdbc:mysql://localhost:3306/quizapp";
		String dbUserName = "root";
		String dbPassword = "root";
		String dbDriverName = "com.mysql.cj.jdbc.Driver";

		try {
			Class.forName(dbDriverName);
			Connection con = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);

			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
