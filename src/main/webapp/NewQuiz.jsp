<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="SaveQuizServlet">

	Title : <input type="text" name="title"/><br><br> 
	TotalQuestion : <input type="text" name="totalQuestion"/><Br><br> 
	Point : <input type="text" name="perQuestionPoint"/><br><br> 
	NegativeMarking : <input type="checkbox" name="negative" value="true"/><br><br> 
	MinusPoing : <input type="text" name="minusPoint" value="0"/><br><br> 
	StartDate: <input type="date" name="startDate"/><br><Br> 
	EndDate:<input type="date" name="endDate"/><br><br> 
	Active : <input type="checkbox" name="active" checked="checked"  value="true"/><br><br> 
	
	<input type="submit" value="Add Quiz"/>
</form>
</body>
</html>