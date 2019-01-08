<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idScenario", id);
Queries c = new Queries();
List<Scenario> scenario = c.getScenario(Integer.parseInt(id));
List<Sport> sport = c.getSport(scenario.get(0).getIdSport());
List<CompanyUser> company = c.getCompanyUser(scenario.get(0).getIdCompanyUser());
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Scenario <%=scenario.get(0).getTitle()%></title>
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
					Scenario <%=scenario.get(0).getTitle()%> data:
				</span>
	
				<b>Sport</b><div class="wrap-input100 validate-input">
					<%=sport.get(0).getName() %>
					<span class="focus-input100"></span>
				</div>
				<b>Price</b> <div class="wrap-input100 validate-input">
					<%=scenario.get(0).getPrice() %>
					<span class="focus-input100"></span>
				</div>
				
				<b>Address </b> <div class="wrap-input100 validate-input">
					<%=scenario.get(0).getAddress() %>
					<span class="focus-input100"></span>
				</div>
				
				<b>City </b> <div class="wrap-input100 validate-input">
					<%=scenario.get(0).getCity() %>
					<span class="focus-input100"></span>
				</div>
	
				<b>Company name</b> <div class="wrap-input100 validate-input">
					<a href="DetailCompanyUser.jsp?id=<%=company.get(0).getId_CompanyUser()%>"><%=company.get(0).getCompanyName() %></a>
					<span class="focus-input100"></span>
				</div>
				
				<b> Capacity </b> <div class="wrap-input100 validate-input">
					<%=scenario.get(0).getCapacity() %>
					<span class="focus-input100"></span>
				</div>
	
				<b>Date</b> <div class="wrap-input100 validate-input">
					<%=scenario.get(0).getDateScenario() %>
					<span class="focus-input100"></span>
				</div>
				
				<b>Description</b> <div class="wrap-input100 validate-input">
					<%=scenario.get(0).getDescription() %>
					<span class="focus-input100"></span>
				</div>
				
				<form method="post" action="sDeleteScenario">
					<div class="container-contact100-form-btn">
						<a href="ModifyScenario.jsp?id=<%=scenario.get(0).getIdScenario()%>"><button class="contact100-form-btn" type="button">Modify</button></a>			
					  	<button class="btn btn-danger" type="submit">Delete</button>
				  	</div>
				  	<br>
				</form>
			<a href="Scenarios.jsp"><button style="margin-left: 190px;" class="btn btn-default">Go back</button></a>
		</div>
	</div>
</body>
</html>