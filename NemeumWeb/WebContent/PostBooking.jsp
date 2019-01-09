<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<%
Queries c = new Queries();
List<Scenario> listScenario = c.getScenarios();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Booking a scenario</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="container-contact100">
		<div class="wrap-contact100">
				<span class="contact100-form-title">
					Booking 
				</span>
			<form method="post" action="sPostBooking">
				Select a scenario: <div class="wrap-input100 validate-input">
					<select class="input100" type="text" name="scenario" required>
						<% for(int i=0; i<listScenario.size(); i++ ){ %>     
					       <option><%=listScenario.get(i).getTitle()%></option>
					    <%} %> 
					</select>
					<span class="focus-input100"></span>
				</div>

				Date <div class="wrap-input100 validate-input">
					<input class="input100" type="date" name="date" Placeholder="Date"  required>
					<span class="focus-input100"></span>
				</div>

				Start time <div class="wrap-input100 validate-input">
					<input class="input100" type="time" name="start_time" placeholder="Start time" required>
					<span class="focus-input100"></span>
				</div>
				
				End time <div class="wrap-input100 validate-input">
					<input class="input100" type="time" name="end_time" placeholder="End time" required>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="email" placeholder="Email" required>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="customer_name" placeholder="Customer name" required>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="number" name="phone" placeholder="Phone" required>
					<span class="focus-input100"></span>
				</div>
				
				<%
					    if(null != request.getAttribute("errorMessage"))
					    {
					        out.println(request.getAttribute("errorMessage"));
					    }
					%>
				
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" type="submit" class="btn btn-primary">Post</button>
			  		<a href="MainPage.jsp"><button class="btn btn-default" type="button">Go back</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>