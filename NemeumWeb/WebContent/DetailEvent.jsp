<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idEvent", id);
Queries c = new Queries();
List<Event> event = c.getEvent(Integer.parseInt(id));
List<CompanyUser> company = null;
List<Sport> sport = c.getSport(event.get(0).getIdSport());
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Scenario <%=event.get(0).getTitle()%></title>
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
					Event <%=event.get(0).getTitle()%> data:
				</span>
	
				<b>Sport</b><div class="wrap-input100 validate-input">
					<%=sport.get(0).getName() %>
					<span class="focus-input100"></span>
				</div>
				<%if (event.get(0).getIsIndoor()){ %>
					<b> Is Indoor </b><div class="wrap-input100 validate-input">
					Yes
					<span class="focus-input100"></span>
				</div>
				<%}else{ %>
					<b> Is Indoor </b><div class="wrap-input100 validate-input">
					No
					<span class="focus-input100"></span>
				</div>
				<%} %>
				<b>Price</b> <div class="wrap-input100 validate-input">
					<%=event.get(0).getPrice() %>
					<span class="focus-input100"></span>
				</div>
				
				<b>Address </b> <div class="wrap-input100 validate-input">
					<%=event.get(0).getAddress() %>
					<span class="focus-input100"></span>
				</div>
				
				<b>City </b> <div class="wrap-input100 validate-input">
					<%=event.get(0).getCity() %>
					<span class="focus-input100"></span>
				</div>
				
				<b> Capacity </b> <div class="wrap-input100 validate-input">
					<%=event.get(0).getCapacity() %>
					<span class="focus-input100"></span>
				</div>
	
				<b>Date</b> <div class="wrap-input100 validate-input">
					<%=event.get(0).getDateEvent() %>
					<span class="focus-input100"></span>
				</div>
				
				<b>Description</b> <div class="wrap-input100 validate-input">
					<%=event.get(0).getDescription() %>
					<span class="focus-input100"></span>
				</div>
				
				<form method="post" action="sDeleteEvent">
					<div class="container-contact100-form-btn">
						<a href="ModifyEvent.jsp?id=<%=event.get(0).getIdEvent()%>"><button class="contact100-form-btn" type="button">Modify</button></a>			
					  	<button class="btn btn-danger" type="submit">Delete</button>
				  	</div>
				  	<br>
				</form>
			<a href="Events.jsp"><button style="margin-left: 190px;" class="btn btn-default">Go back</button></a>
		</div>
	</div>
</body>
</html>