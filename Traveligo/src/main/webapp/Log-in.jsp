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

</head>
<body>



	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" align="center">

				<img alt="" src="image/index25.jpeg" class="frontimage">

			</div>
			<div class="col-md-4"></div>




		</div>

		<div class="row">
			<div class="col-md-4"></div>

			<div class="col-md-4" align="center">
				<form action="validate" method="get">
					<div>
						<label for="username">Username</label><input type="text"
							name="username" id="username" />

					</div>
					<div>
						<p style="color: red">

							<c:out value="${message2}"></c:out>

						</p>


					</div>


					<div>
						<label for="password">Password</label><input type="password"
							name="password" id="password" />
					</div>
					<div>
						<p style="color: red">

							<c:out value="${message3}"></c:out>

						</p>


					</div>

					<input type="submit" value="log-in"> <input type="submit"
						value="Resgister" formaction="register.jsp">


				</form>



			</div>
			<div class="col-md-4"></div>

		</div>





	</div>



</body>
</html>