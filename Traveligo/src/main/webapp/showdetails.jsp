<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<style type="text/css">
	
	.space{
	
	 width: 10px;
	 
	
	}
	
	
	</style>
</head>
<body>

	<div class="container-fluid">

		<div class="row">


			<div class="col-md-12" align="center">

				<div>
					<h1 style="background-color: gray; display: inline;">List of
						User Details</h1>
				</div>
				<br>

				<table border="1" style="font-size: 1.2em">
					<tr style="background-color: gray;" align="center" class="space">
						<td>Name</td>
						<td>Username</td>
						<td>password</td>
						<td>ConfirmPassword</td>
						<td>Age</td>
						<td>Gender</td>
						<td>Mail-id</td>
						<td>ContactNumber</td>
					</tr>

					<c:forEach items="${travel}" var="each">
						<tr align="center">
							<td><c:out value="${each.name}"></c:out></td>
							<td><c:out value="${each.username}"></c:out></td>
							<td><c:out value="${each.password}"></c:out></td>
							<td><c:out value="${each.confirmpassword}"></c:out></td>
							<td><c:out value="${each.age}"></c:out></td>
							<td><c:out value="${each.gender}"></c:out></td>
							<td><c:out value="${each.mailid}"></c:out></td>
							<td><c:out value="${each.contact}"></c:out></td>
						</tr>


					</c:forEach>


				</table>


			</div>



		</div>

















	</div>
</html>