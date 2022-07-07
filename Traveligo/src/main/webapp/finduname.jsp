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
	
	
</head>
<body>


<div class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" align="center">

			<form action="findname">
			<div>
						<label for="contactnumber" style="background-color: gray">Contact</label><input
							style="margin-left: 92px" type="text" name="contact"
							id="contactnumber" value="${findname.contact}" />
					</div>
				
				
				<div><input type="submit"  value="Enter" class="btn btn-success" /></div>
			</form>
			

			</div>
			<div class="col-md-4"></div>




		</div>
		</div>

</body>
</html>