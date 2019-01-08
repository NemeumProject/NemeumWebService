<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<%
Queries c = new Queries();
List<Sport> listSport = c.getSports();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Create a event</title>
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
			<form class="contact100-form validate-form" method="post" action="sPostEvent">
				<span class="contact100-form-title">
					Create a event
				</span>

				Title: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="title" placeholder="Title" required>
					<span class="focus-input100"></span>
				</div>

				Sport: <div class="wrap-input100 validate-input">	
					<select class="input100" type="text" name="sport" required>
						<% for(int i=0; i<listSport.size(); i++ ){ %>     
				       <option><%=listSport.get(i).getName()%></option>
				    	<%} %> 
					</select>
					<span class="focus-input100"></span>
				</div>
				Is Indoor: <div class="wrap-input100 validate-input">	
								<select class="input100" type="text" name="isIndoor"required>
					       			<option value="1">Yes</option>
				    	  			<option value="0">No</option>	
				    			</select>
				    			<span class="focus-input100"></span>
			    			</div>
					
				Price: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="price" placeholder="Price" required>
					<span class="focus-input100"></span>
				</div>
				
				Address: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="address" placeholder="Address" required>
					<span class="focus-input100"></span>
				</div>
				
				City: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="city" placeholder="City" required>
					<span class="focus-input100"></span>
				</div>
				
				Capacity: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="capacity" placeholder="Capacity" required>
					<span class="focus-input100"></span>
				</div>
				
				Phone: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="phone" placeholder="Phone" required>
					<span class="focus-input100"></span>
				</div>
				
				Date: <div class="wrap-input100 validate-input">
					<input class="input100" type="date" name="date" required>
					<span class="focus-input100"></span>
				</div>
				
				Description <div class="wrap-input100 validate-input">
							<input class="input100" type="text" name="description" placeholder="description" required>		
					<span class="focus-input100"></span>
				</div>
				
				<%
					    if(null != request.getAttribute("errorMessage"))
					    {
					        out.println(request.getAttribute("errorMessage"));
					    }
					%>
					<br>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" type="submit" class="btn btn-primary">Create</button>
			  		<a href="Events.jsp"><button class="btn btn-default" type="button">Go back</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>