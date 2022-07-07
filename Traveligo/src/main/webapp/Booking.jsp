<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	.box{
	
	width: 250px;
	height: 480px;
	margin-top: 2%;
	background-color: gray;
	
	
	}
	
	
	</style>



</head>
<body>

	<div class="container-fluid">
		<div class="row" >
			
			<div class="col-md-12" align="center">
				<h1 align="center" style="color: gray">Booking Portal</h1>

			</div>
			
		</div>
		<div class="row"> 
			<div class="col-md-4"></div>
			<div class="col-md-4 box" >

				<form action="addbook" method="get">
					<div>
						<label for="" style="background-color: gray;font-size: 1.0em">Name</label><input
							style="margin-left: 102px" type="text" name="name" id="name"
							placeholder="Enter your name" required="required" value="${booking.name}" />
					</div>
					<div>
						<label for="username" style="background-color: gray">UserName</label><input
							style="margin-left: 69px" type="text" name="username"
							id="username" placeholder="Enter your valid username"
							required="required" value="${booking.username}" />
					</div>
					<div>
						<label for="password" style="background-color: gray">Password</label><input
							style="margin-left: 74px" type="password" name="password"
							id="password" placeholder="Enter your valid password"
							required="required" value="${booking.password}"/>
					</div>
					<div>
						<label for="confirmpassword" style="background-color: gray">Confirm
							Password</label><input style="margin-left: 15px" type="password"
							name="confirmpassword" id="confirmpassword"
							placeholder="Enter your valid password" required="required" value="${booking.confirmpassword}"/>
					</div>
					<div>
						<label for="age" style="background-color: gray">Age</label><input
							style="margin-left: 117px" type="number" name="age" id="age"
							required="required" value="${booking.age}"/>
					</div>
					<div>
						<label for="gender" style="background-color: gray">Gender</label>
						<select style="margin-left: 87px" name="gender" value="${booking.gender}">
							<option>Male</option>
							<option>Female</option>
							<option>others</option>
						</select>


					</div>
					<div>
						<label for="mailid" style="background-color: gray">Mail-id</label><input
							style="margin-left: 98px" type="text" name="mailid" id="mailid" value="${booking.mailid}"/>
					</div>
					<div>
						<label for="contactnumber" style="background-color: gray">Contact</label><input
							style="margin-left: 92px" type="text" name="contact"
							id="contactnumber" value="${booking.contact}" />
					</div>
					<div>
						<label for="" style="background-color: gray">Source</label><select
							style="margin-left: 94px" name="sources">
							<optgroup label="Chennai">
								<option>koyembedu</option>
								<option>Guindy</option>
								<option>Alandur</option>
								<option>Ekkaatudangal</option>
							</optgroup>

							<option>Coimbatore</option>
							<option>madurai</option>
							<option>Tirunelveli</option>
							<option>Kovilpatti</option>
							<option>nagarcoil</option>
							<option>Tenkasi</option>
							<option>Salem</option>
							<option>ooty</option>
							<option>Pondicherry</option>
							<option>vellore</option>
							<option>Nagapattinam</option>
						</select>
					</div>
					<div>
						<label for="" style="background-color: gray">Destination</label><select
							style="margin-left: 65px" name="destination">
							<optgroup label="Chennai">
								<option>koyembedu</option>
								<option>Guindy</option>
								<option>Alandur</option>
								<option>Ekkaatudangal</option>
							</optgroup>

							<option>Coimbatore</option>
							<option>madurai</option>
							<option>Tirunelveli</option>
							<option>Kovilpatti</option>
							<option>nagarcoil</option>
							<option>Tenkasi</option>
							<option>Salem</option>
							<option>ooty</option>
							<option>Pondicherry</option>
							<option>vellore</option>
							<option>Nagapattinam</option>
						</select>
					</div>
					<div>
						<label for="date" style="background-color: gray">Date</label><input
							style="margin-left: 111px" type="date" name="date" id="date" />
					</div>
					<div>
						<label for="time" style="background-color: gray">Time</label><input
							style="margin-left: 111px" type="time" name="time" id="time" />
					</div>

					<div align="center">
						<input type="submit" value="Booked" class="btn btn-success">


						<input type="reset" value="clear" class="btn btn-danger">
						<a href="Log-in.jsp">Home</a>
					</div>

				</form>
			</div>
			<div class="col-md-4"></div>

		</div>
	</div>






</body>
</html>