

<%@page import="com.training.util.ConnectionFactory"%>
<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.training.util.ConnectionFactory.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.sql.*"%>
<%@ page session="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validate User</title>
</head>
<body>
	<%!String pass_word;%>
	<%!String user_name;%>
	<%!int status = 0;%>
	<%
	Connection con = null;
	//PreparedStatement stmt=null;
	Statement stmt = null;
	ResultSet rs = null;
	try {
		user_name = request.getParameter("username");
		pass_word = request.getParameter("password");

		//System.out.println("user_id = "+user+"\t"+"pass_word = "+pass_word);
		con = ConnectionFactory.getpostgresqlconnection();
		System.out.print(con);

		String sql = "SELECT username,password FROM register WHERE username='" + user_name + "' or password='" + pass_word
		+ "';";
		System.out.println(sql);
		stmt = con.createStatement();
		rs = stmt.executeQuery(sql);
		String username = null;
		String password = null;
		if (rs.next()) {

			username = rs.getString("username");
			password = rs.getString("password");

			status = 1;

		}
		if (status == 1) {

			status = 0;

			if (user_name.equals(username) && pass_word.equals(password)) 
			{
				System.out.println("valid user" + username);
				request.setAttribute("message", "Welcome :" + username);
				request.setAttribute("message1", "successfully log-In");
				RequestDispatcher dispatcher = request.getRequestDispatcher("logout.jsp");
				dispatcher.forward(request, response);

			} 
			else 
			{
                   System.out.println("Invalid user");
		           request.setAttribute("message2", "invalid username");
		           request.setAttribute("message3", "invalid password");

		            RequestDispatcher dispatcher = request.getRequestDispatcher("Log-in.jsp");
		            dispatcher.forward(request, response);

			}

		}

		else {
			request.setAttribute("message3", "please Register first!!!");

			RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);

		}

	} catch (Exception e) {

		e.printStackTrace();
	}
	%>

</body>
</html>