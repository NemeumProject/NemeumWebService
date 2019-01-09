<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idUser", id);
Queries c = new Queries();
List<TrainerUser> l = c.getTrainerUser(Integer.parseInt(id));
%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Trainer <%=l.get(0).getFirst_name()%> data:</title>
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
			<form class="contact100-form validate-form" method="post" action="sModifyTrainerUser">
				<span class="contact100-form-title">
					Trainer <%=l.get(0).getFirst_name()%> data: 
				</span>

				First name <div class="wrap-input100 validate-input" data-validate="Please enter your name">
					<input class="input100" type="text" name="name" placeholder="First name" value="<%= l.get(0).getFirst_name() %>" required>
					<span class="focus-input100"></span>
				</div>

				Surname <div class="wrap-input100 validate-input" data-validate="Please enter your surname">
					<input class="input100" type="text" name="surname" Placeholder="Surname" value="<%= l.get(0).getMiddle_surname_initial() %>" required>
					<span class="focus-input100"></span>
				</div>

				Last surname <div class="wrap-input100 validate-input" data-validate="Please enter your last surname">
					<input class="input100" type="text" name="last_surname" placeholder="Last surname" value="<%= l.get(0).getLast_surname() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Title: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="title" placeholder="Slogan" value="<%=l.get(0).getTitle() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Ssn <div class="wrap-input100 validate-input" data-validate="Please enter your ssn">
					<input class="input100" type="text" name="ssn" placeholder="Ssn" value="<%= l.get(0).getSsn() %>" required>
					<span class="focus-input100"></span>
				</div>

				Email <div class="wrap-input100 validate-input" data-validate = "Please enter email: e@a.x">
					<input class="input100" type="text" name="email" placeholder="Email" value="<%= l.get(0).getEmail() %>" required>
					<span class="focus-input100"></span>
				</div>

				City <div class="wrap-input100 validate-input" data-validate="Please enter your city">
					<input class="input100" type="text" name="city" placeholder="City" value="<%= l.get(0).getCity() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Address <div class="wrap-input100 validate-input" data-validate="Please enter your address">
					<input class="input100" type="text" name="address" placeholder="Address" value="<%= l.get(0).getAddress() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Postal code<div class="wrap-input100 validate-input" data-validate="Please enter your postal code">
					<input class="input100" type="text" name="postal_code" placeholder="Postal code" value="<%= l.get(0).getPostal_code() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Phone <div class="wrap-input100 validate-input" data-validate="Please enter your postal phone">
					<input class="input100" type="number" name="phone" placeholder="Phone" value="<%= l.get(0).getPhone() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Description <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="description" placeholder="Description" value="<%=l.get(0).getDescription() %>" required>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" type="submit" class="btn btn-primary">Modify</button>
			  		<a href="DetailTrainerUser.jsp?id=<%=l.get(0).getId_TrainerUser()%>"><button class="btn btn-default" type="button">Go back</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>