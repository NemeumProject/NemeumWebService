<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Create a trainer user</title>
</head>
<body>
	<div align="center">
		<h1>Create a trainer user</h1>
		<br>
		<form method="post" action="sPostTrainerUser">
			Name:
			<input type="text" name="name" required>
			<br>
			Middle surname:
			<input type="text" name="surname" required>
			<br>
			Last surname:
			<input type="text" name="last_surname" required>
			<br>
			Ssn:
			<input type="text" name="ssn" required>
			<br>
			Email:
			<input type="text" name="email" required>
			<br>
			Teached hours:
			<input type="text" name="teached_hours" required>
			<br>
			City:
			<input type="text" name="city" required>
			<br>
			Address:
			<input type="text" name="address" required>
			<br>
			Postal code:
			<input type="text" name="postal_code" required>
			<br>
			Phone:
			<input type="text" name="phone" required>
			<br>
			Premium:
			<select type="text" name="isPremium" required>
		       			<option value="0">No</option>
	    	  			<option value="1">Yes</option>	
		    </select>
		    <br>
			<button type="submit" class="btn btn-primary">Create</button>
			<a href="IndividualUser.jsp"><button class="btn btn-default" type="button">Go back</button></a>
		</form>
	</div>
</body>
</html>