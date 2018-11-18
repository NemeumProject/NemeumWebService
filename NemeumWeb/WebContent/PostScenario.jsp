<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Create a individual user</title>
</head>
<%
Queries c = new Queries();
List<CompanyUser> listCompany = c.getCompanyUsers();
List<Sport> listSport = c.getSports();
%>
<body>
	<div align="center">
		<h1>Create a scenario</h1>
		<br>
		<form method="post" action="sPostScenario">
			Sport:
			<select type="text" name="sport" required>
				<% for(int i=0; i<listSport.size(); i++ ){ %>     
			       <option><%=listSport.get(i).getName()%></option>
			    <%} %> 
			</select>
			<br>
			Price:
			<input type="text" name="price" required>
			<br>
			Indoor:
			<select type="text" name="isIndoor" required>
		       			<option value="0">No</option>
	    	  			<option value="1">Yes</option>	
		    </select>
			<br>
			Capacity:
			<input type="text" name="capacity" required>
			<br>
			Company:
			<select type="text" name="company" required>
				<% for(int i=0; i<listCompany.size(); i++ ){ %>     
			       <option><%=listCompany.get(i).getCompanyName()%></option>
			    <%} %> 
			</select>
			<br>
			Date:
			<input type="date" name="date" required>
			<br>
			<button type="submit" class="btn btn-primary">Create</button>
			<a href="Scenarios.jsp"><button class="btn btn-default" type="button">Go back</button></a>
		</form>
	</div>
</body>
</html>