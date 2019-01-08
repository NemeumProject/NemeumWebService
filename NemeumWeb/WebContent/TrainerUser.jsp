<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<%
Queries q = new Queries();
List<TrainerUser> listTrainers = q.getTrainerUsers();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title> List of trainer users</title>
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
				List of trainer users 
			</span>


			<% for(int i=0; i<listTrainers.size(); i++ ){ %>  
				<div class="wrap-input100 validate-input">   
			      <b>User: </b> <%=listTrainers.get(i).getFirst_name() + " " + listTrainers.get(i).getMiddle_surname_initial()%> 
			      <a href="DetailTrainerUser.jsp?id=<%=listTrainers.get(i).getId_TrainerUser()%>"><button class="contact100-form-btn" type="button">See details</button></a>
			      <span class="focus-input100"></span>
			      </div>
	   		<%} %>
	   		<div class="container-contact100-form-btn">
	   			<a href="PostTrainerUser.jsp"><button class="contact100-form-btn">Create Trainer User</button></a>
	   		<a href="MainUser.jsp"><button class="btn btn-default">Go back</button></a>
	   		</div>
			
		</div>
	</div>
</body>
</html>