<%@page import="org.apache.catalina.connector.Request"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<@<%!String userName;%>
	<@<%!String passWord;%>
	<@<%
	try {
		userName = request.getParameter("username");
		passWord = request.getParameter("password");

		if (userName.equals("vastpro") && passWord.equals("vastpro123")) {
			request.setAttribute("message1", "Admin log-In Succesfully!!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("user.jsp");
			dispatcher.forward(request, response);

		} else {
			System.out.println("Invalid user");
			request.setAttribute("message2", "invalid username");
			request.setAttribute("message3", "invalid password");
			request.setAttribute("message4", "invalid username and password!!!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminpage.jsp");
			dispatcher.forward(request, response);

		}

	} catch (Exception e) {

		e.printStackTrace();
	}
	%>





</body>
</html>