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
    <title>Main Page!</title>
  </head>
</head>

<body>
	<div style="margin-top:100px;" align="center" class="w3-container">
	  <h1>Main page!</h1>
	  <p>Information available for the administrator user:</p>
	
	  <div align="center" class="w3-show-inline-block">
		  <div class="w3-bar">
		    <a href="MainUser.jsp"><button style="width:150px; height:100px;" class="w3-btn w3-black">Users</button></a>
		    <a href="Scenarios.jsp"><button style="width:150px; height:100px; margin-left:50px" class="w3-btn w3-teal">Scenarios</button></a>
		    <a href="Teams.jsp"><button style="width:150px; height:100px; margin-left:50px" class="w3-btn w3-border">Teams</button></a>
		    <a href="Events.jsp"><button style="width:150px; height:100px; margin-left:42px;" class="w3-btn w3-black">Events</button></a>
		  </div>
	  </div>
	</div>
</body>
</html>