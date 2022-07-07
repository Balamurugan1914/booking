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
.backgroundimage {
	background-image: url("image/istockphoto-653953140-612x612.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

.frontimage {
	width: 250px;
	height: 250px;
}
</style>



</head>
<body>
	<div>
		<p style="color: green;">

			<c:out value="${message1}"></c:out>

		</p>



	</div>


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

				<form action="">

					<input type="submit" value="Log-in" formaction="Log-in.jsp" /> <input
						type="submit" value="Register" formaction="register.jsp" />



				</form>

			</div>
			<div class="col-md-4"></div>

		</div>





	</div>






</body>
</html>