<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
.box {
	width: 150px;
	height: 270px;
	background-color: gray;
	margin-top: 2%;
	border-radius: 10px;
}
</style>
</head>
<body>


	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12" align="center">
				<div>
					<h1 style="background-color: gray; display: inline;">Admin
						Portal</h1>


				</div>
			</div>




		</div>
		<div class="row">


			<div class="col-md-4"></div>
			<div class="col-md-4 box" align="center">


				<form action="adminValidate">
					<div>
						<label for="" style="font-size: 2.0em">UserName</label><input
							type="text" name="username" id="user" required="required"
							class="form-control" />
					</div>
					<div>
						<label for="" style="font-size: 2.0em">Password</label><input
							type="text" name="password" id="pass" class="form-control" />
					</div>
					<br>
					<div>
						<div>
							<p style="color: red;">

								<c:out value="${message4}"></c:out>

							</p>



						</div>

						<input type="submit" value="Log_in" class="btn btn-success">
						<input type="reset" value="Clear" class="btn btn-danger">

					</div>

				</form>










			</div>



			<div class="col-md-4"></div>


		</div>














	</div>




</body>
</html>