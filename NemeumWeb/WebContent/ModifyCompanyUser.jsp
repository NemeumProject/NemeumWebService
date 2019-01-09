<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idUser", id);
Queries c = new Queries();
List<CompanyUser> l = c.getCompanyUser(Integer.parseInt(id));
%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Company <%=l.get(0).getCompanyName()%> data</title>
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
			<form class="contact100-form validate-form" method="post" action="sModifyCompanyUser">
				<span class="contact100-form-title">
					Company <%=l.get(0).getCompanyName()%> data: 
				</span>

				Company name<div class="wrap-input100 validate-input" data-validate="Please enter your company name">
					<input class="input100" type="text" name="company_name" placeholder="Company name" value="<%=l.get(0).getCompanyName()%>" required>
					<span class="focus-input100"></span>
				</div>

				Comercial name <div class="wrap-input100 validate-input" data-validate="Please enter your comercial name">
					<input class="input100" type="text" name="comercial_name" placeholder="Comercial name" value="<%= l.get(0).getComercialName() %>" required>
					<span class="focus-input100"></span>
				</div>

				Contact person <div class="wrap-input100 validate-input" data-validate="Please enter your contact person">
					<input class="input100" type="text" name="contact_person" placeholder="Contact person" value="<%= l.get(0).getContactPerson() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Slogan: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="title" placeholder="Slogan" value="<%=l.get(0).getSlogan() %>" required>
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
				
				Postal code <div class="wrap-input100 validate-input" data-validate="Please enter your postal code">
					<input class="input100" type="text" name="postal_code" placeholder="Postal code" value="<%= l.get(0).getPostal_code() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Phone <div class="wrap-input100 validate-input" data-validate="Please enter your postal phone">
					<input class="input100" type="number" name="phone" placeholder="phone" value="<%= l.get(0).getPhone() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				
				Description <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="description" placeholder="Description" value="<%=l.get(0).getDescription() %>" required>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" type="submit" class="btn btn-primary">Modify</button>
			  		<a href="DetailCompanyUser.jsp?id=<%=l.get(0).getId_CompanyUser()%>"><button class="btn btn-default" type="button">Go back</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>