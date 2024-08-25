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
	//int totalNumQuestion = (Integer) request.getAttribute("totalNumQuestion");
	int totalNumQuestion = 3;
	%>
	<form method="post" action="SaveQuestionServlet">
		
		<input type="hidden" name="totalQuestion" value="<%=totalNumQuestion %>"/>
		<%
		for (int i = 1; i <= totalNumQuestion; i++) {
		%>
		Question :
		<textarea name="question<%=i%>" rows="5" cols="20"></textarea>
		<br>
		<Br> O1: <input type="text" name="o1q<%=i%>" /><br>
		<BR> O2:<input type="text" name="o2q<%=i%>" /><br>
		<BR> O3:<input type="text" name="o3q<%=i%>" /><br>
		<BR> O4:<input type="text" name="o4q<%=i%>" /><br>
		<BR> Ans: <input type="text" name="ans" /><br>
		<BR>
		<%
		}
		%>

		<input type="submit" value="Save Questions">

	</form>

</body>
</html>