<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <head>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Users Page!</title>
  </head>
</head>

<body>
	<div style="margin-top:100px;" align="center" class="w3-container">
	  <h1>Users page!</h1>
	  <p>Filter for the different user's type:</p>
	
	  <div align="center" class="w3-show-inline-block">
		  <div class="w3-bar">
		    <a href="IndividualUser.jsp"><button style="width:150px; height:100px;" class="w3-btn w3-black">Individual users</button></a>
		    <a href="CompanyUser.jsp"><button style="width:150px; height:100px; margin-left:50px" class="w3-btn w3-teal">Company users</button></a>
		    <a href="TrainerUser.jsp"><button style="width:150px; height:100px; margin-left:50px" class="w3-btn w3-border">Trainers users</button></a>
		  </div>
		  <br>
		  <br>
		  <br>
		  <a href="MainPage.jsp"><button class="btn btn-default">Go back</button></a>
	  </div>
	</div>
</body>
</html>