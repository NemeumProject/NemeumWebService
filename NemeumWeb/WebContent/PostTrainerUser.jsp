<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Create a trainer user</title>
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
					Create a trainer user 
				</span>
			<form method="post" action="sPostTrainerUser">
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="name" placeholder="First name"required>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="surname" Placeholder="Surname"  required>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="last_surname" placeholder="Last surname" required>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="title" placeholder="Title" required>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="ssn" placeholder="Ssn" required>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="email" placeholder="Email" required>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="city" placeholder="City" required>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="address" placeholder="Address" required>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="postal_code" placeholder="Postal code"  required>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="number" name="phone" placeholder="Phone" required>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="description" placeholder="Description" required>
					<span class="focus-input100"></span>
				</div>
			
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" type="submit" class="btn btn-primary">Create</button>
			  		<a href="TrainerUser.jsp"><button class="btn btn-default" type="button">Go back</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>