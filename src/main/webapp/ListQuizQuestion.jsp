<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.QuestionBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<QuestionBean> questions = (ArrayList<QuestionBean>) request.getAttribute("questions");
	%>



	<h2>All Question</h2>
	<br>
	<br>
	<br>
	<table border="1">
		<tr>
			<th>QuestionId</th>
			<th>Question</th>
			<th>O1</th>
			<th>O2</th>
			<th>O3</th>
			<th>O4</th>
			<th>correctAns</th>
		</tr>
		<%
		for (QuestionBean q : questions) {
			out.print("<tr>");
			out.print("<td>" + q.getQuestionId() + "</td>");
			out.print("<td>" + q.getQuestion() + "</td>");
			out.print("<td>" + q.getO1() + "</td>");
			out.print("<td>" + q.getO2() + "</td>");
			out.print("<td>" + q.getO3() + "</td>");
			out.print("<td>" + q.getO4() + "</td>");
			out.print("<td>" + q.getCorrectAns() + "</td>");
			out.print("</tr>");

		}
		%>

	</table>

</body>
</html>