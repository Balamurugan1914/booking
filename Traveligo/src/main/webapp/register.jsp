<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
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
<div>
<p style="color: green;">

<d:out value="${message3}"></d:out>

</p>



</div>




	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
			
			
			</div>
			<div class="col-md-5">
			<h1 align="center" style="color: gray">Register details</h1>
			
			</div>
			<div class="col-md-3">
			
			</div>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" >
				<form action="add" method="post">
					<div >
						<label for="" style="background-color: gray">Name</label><input style="margin-left: 45px" type="text" name="name" id="name"
							placeholder="Enter your name" required="required"
							 />
					</div>
					<div >
						<label for="username" style="background-color: gray">UserName</label><input style="margin-left: 10px" type="text" name="username"
							id="username" placeholder="Enter your valid username"
							required="required" />
					</div>
					<div >
						<label for="password" style="background-color: gray">Password</label><input style="margin-left: 15px" type="password" name="password"
							id="password" placeholder="Enter your valid password"
							required="required"  />
					</div>
					<div >
						<label for="confirmpassword" style="background-color: gray">Confirm Password</label><input style="margin-left: 15px" type="password" name="confirmpassword"
							id="confirmpassword" placeholder="Enter your valid password"
							required="required"  />
					</div>
					<div >
						<label for="age" style="background-color: gray">Age</label><input style="margin-left: 56px" type="number" name="age" id="age"
							required="required"  />
					</div>
					<div>
						<label for="gender" style="background-color: gray">Gender</label> <select style="margin-left: 28px" name="gender">
							<option>Male</option>
							<option>Female</option>
							<option>others</option>
						</select>


					</div>
					<div>
						<label for="mailid" style="background-color: gray">Mail-id</label><input style="margin-left: 40px" type="text" name="mailid"
							id="mailid"  />
					</div>
					<div >
						<label for="contactnumber" style="background-color: gray">Contact</label><input style="margin-left: 33px" type="text"
							name="contact" id="contactnumber" 
							 />
					</div>
					<div>
						<input type="submit" value="save" class="btn success-btn" >
						

						<input type="reset" value="clear" class="btn danger-btn">
						<a href="Log-in.jsp">Home</a>
					</div>

				</form>
			</div>
			<div class="col-md-4"></div>

		</div>
	</div>
</body>
</html>