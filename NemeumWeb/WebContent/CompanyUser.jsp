<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<%
Queries q = new Queries();
List<CompanyUser> listCompany = q.getCompanyUsers();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title> List of company users</title>
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
				List of company users 
			</span>


			<% for(int i=0; i<listCompany.size(); i++ ){ %>  
				<div class="wrap-input100 validate-input">   
			      <b>User: </b> <%=listCompany.get(i).getCompanyName()%> 
			      <a href="DetailCompanyUser.jsp?id=<%=listCompany.get(i).getId_CompanyUser()%>"><button class="contact100-form-btn" type="button">See details</button></a>
			      <span class="focus-input100"></span>
			      </div>
	   		<%} %>
	   		<div class="container-contact100-form-btn">
	   			<a href="PostCompanyUser.jsp"><button class="contact100-form-btn">Create Company User</button></a>
	   		<a href="MainUser.jsp"><button class="btn btn-default">Go back</button></a>
	   		</div>
			
		</div>
	</div>
</body>
</html>