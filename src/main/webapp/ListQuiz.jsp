<%@page import="com.bean.QuizBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<QuizBean> allQuiz = (ArrayList<QuizBean>) request.getAttribute("allQuiz");
	%>



	<h2>All Quiz</h2>


<br>
<a href="NewQuiz.jsp">Add Quiz</a>
	<br><br>
	<table border="1">
		<tr>
			<th>QuizId</th>
			<th>Title</th>
			<th>StartDate</th>
			<th>EndDate</th>
			<th>Active</th>
			<th>Action</th>
		</tr>
		<%
		for (QuizBean q : allQuiz) {
			out.print("<tr>");
			out.print("<td>" + q.getQuizId() + "</td>");
			out.print("<td>" + q.getTitle() + "</td>");
			out.print("<td>" + q.getStartDate() + "</td>");
			out.print("<td>" + q.getEndDate() + "</td>");
			out.print("<td>" + q.getActive() + "</td>");

			out.print("<td>");

			out.print("<a href='EditQuizServlet?quizId="+q.getQuizId()+"'>Edit</a>");
			out.print(" | <a href='DeleteQuizServlet?quizId="+q.getQuizId()+"'>Delete</a>");
			out.print(" | <a href='AddQuestion.jsp?quizId="+q.getQuizId()+"&totalQuestion="+q.getTotalQuestion()+"'>Add Question</a>");
			out.print(" | <a href='ListQuizQuestionServlet?quizId="+q.getQuizId()+"'>Show Questions</a>");
			
			
			
			out.print("</td>");

			out.print("</tr>");

		}
		%>

	</table>

</body>
</html>