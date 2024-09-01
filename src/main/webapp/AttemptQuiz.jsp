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



	<h2>Quiz Question</h2>
	<br>
	<br>
	<form action="SubmitExamServlet" method="get">
		<%
		int i = 1;
		for (QuestionBean q : questions) {
			out.print("<div>");
			out.print("<b> Question-" + i + ": " + q.getQuestion() + "</b>");
			out.print("<br>");
			out.print(
			"<input type='radio' value='" + q.getO1() + "'   name='" + q.getQuestionId() + "'> " + q.getO1() + "<br>");
			out.print("<input type='radio' value='"+ q.getO2() + "' name='" + q.getQuestionId() + "'> " + q.getO2() + "<br>");
			out.print("<input type='radio' value='"+ q.getO3() + "' name='" + q.getQuestionId() + "'> " + q.getO3() + "<br>");
			out.print("<input type='radio' value='"+ q.getO4() + "' name='" + q.getQuestionId() + "'> " + q.getO4() + "<br>");

			out.print("<Br>");
			i++;
		}
		%>

		<input type="submit" value="Submit Exam" />
	</form>
</body>
</html>