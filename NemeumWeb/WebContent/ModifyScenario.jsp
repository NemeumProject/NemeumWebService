<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idScenario", id);
Queries c = new Queries();
List<Scenario> l = c.getScenario(Integer.parseInt(id));
List<Sport> sport = c.getSport(l.get(0).getIdSport());
List<CompanyUser> company = c.getCompanyUser(l.get(0).getIdCompanyUser());
List<Sport> listSport = c.getSports();
List<CompanyUser> listCompany = c.getCompanyUsers();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact V9</title>
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
			<form class="contact100-form validate-form" method="post" action="sModifyScenario">
				<span class="contact100-form-title">
					Scenario <%=l.get(0).getTitle()%> data:
				</span>

				Title: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="title" placeholder="Title" value="<%=l.get(0).getTitle() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Sport: <div class="wrap-input100 validate-input">	
					<select class="input100" type="text" name="sport" value="<%=sport.get(0).getName() %>" required>
						<% for(int i=0; i<listSport.size(); i++ ){ %>     
				       <option><%=listSport.get(i).getName()%></option>
				    	<%} %> 
					</select>
					<span class="focus-input100"></span>
				</div>
				Price: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="price" placeholder="Price" value="<%=l.get(0).getPrice() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				
				Address: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="address" placeholder="Address" value="<%=l.get(0).getAddress() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				City: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="city" placeholder="City" value="<%=l.get(0).getCity() %>" required>
					<span class="focus-input100"></span>
				</div>

				Company name: <div class="wrap-input100 validate-input">	
					<select class="input100" type="text" name="company" value="<%=company.get(0).getCompanyName() %>" required>
						<% for(int i=0; i<listCompany.size(); i++ ){ %>     
				       <option><%=listCompany.get(i).getCompanyName()%></option>
				    	<%} %> 
					</select>
					<span class="focus-input100"></span>
				</div>
				
				Capacity: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="capacity" placeholder="Capacity" value="<%= l.get(0).getCapacity() %>" required>
					<span class="focus-input100"></span>
				</div>

				Date: <div class="wrap-input100 validate-input">
					<input class="input100" type="date" name="date" value="<%=l.get(0).getDateScenario() %>" required>
					<span class="focus-input100"></span>
				</div>

				Description: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="description" placeholder="Description" value="<%=l.get(0).getDescription() %>" required>
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
					<button class="contact100-form-btn" type="submit" class="btn btn-primary">Modify</button>
			  		<a href="DetailScenario.jsp?id=<%=l.get(0).getIdScenario()%>"><button class="btn btn-default" type="button">Go back</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>