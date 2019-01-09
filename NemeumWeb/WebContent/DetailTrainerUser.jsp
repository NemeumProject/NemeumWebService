<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idTrainer", id);
Queries c = new Queries();
List<TrainerUser> listTrainer = c.getTrainerUser(Integer.parseInt(id));
%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Trainer <%=listTrainer.get(0).getFirst_name()%> data: </title>
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
				Trainer <%=listTrainer.get(0).getFirst_name()%> data: 
			</span>

			<b>First name</b> <div class="wrap-input100 validate-input">
				<%= listTrainer.get(0).getFirst_name() %>
				<span class="focus-input100"></span>
			</div>

			<b> Surname </b> <div class="wrap-input100 validate-input">
				<%= listTrainer.get(0).getMiddle_surname_initial() %>
				<span class="focus-input100"></span>
			</div>

			<b> Last surname </b> <div class="wrap-input100 validate-input">
				<%= listTrainer.get(0).getLast_surname() %>
				<span class="focus-input100"></span>
			</div>
			
			<b> Title </b> <div class="wrap-input100 validate-input">
					<%= listTrainer.get(0).getTitle() %>
					<span class="focus-input100"></span>
				</div>
			
			<b> Ssn </b> <div class="wrap-input100 validate-input">
				<%= listTrainer.get(0).getSsn() %>
				<span class="focus-input100"></span>
			</div>

			<b> Email </b> <div class="wrap-input100 validate-input">
				<%= listTrainer.get(0).getEmail() %>
				<span class="focus-input100"></span>
			</div>

			<b> City </b> <div class="wrap-input100 validate-input">
				<%= listTrainer.get(0).getCity() %>
				<span class="focus-input100"></span>
			</div>
			
			<b> Address </b> <div class="wrap-input100 validate-input">
				<%= listTrainer.get(0).getAddress() %>
				<span class="focus-input100"></span>
			</div>
			
			<b> Postal code </b> <div class="wrap-input100 validate-input">
				<%= listTrainer.get(0).getPostal_code() %>
				<span class="focus-input100"></span>
			</div>
			
			<b> Phone </b> <div class="wrap-input100 validate-input">
				<%= listTrainer.get(0).getPhone() %>
				<span class="focus-input100"></span>
			</div>

			<b> Description </b> <div class="wrap-input100 validate-input">
					<%= listTrainer.get(0).getDescription() %>
					<span class="focus-input100"></span>
				</div>

			<form method="post" action="sDeleteTrainerUser">
				<div class="container-contact100-form-btn">
					<a href="ModifyTrainerUser.jsp?id=<%=listTrainer.get(0).getId_TrainerUser()%>"><button class="contact100-form-btn" type="button">Modify</button></a>			
				  	<button class="btn btn-danger" type="submit">Delete</button>
			  	</div>
			  	<br>
			</form>
			<a href="TrainerUser.jsp"><button style="margin-left: 190px;" class="btn btn-default">Go back</button></a>
		</div>
	</div>
</body>
</html>