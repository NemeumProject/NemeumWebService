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
List<IndividualUser> listUsers = c.getIndividualUsers();
List<Sport> listSport = c.getSports();
%>
<body>
	<div align="center">
		<h1>Create a team</h1>
		<br>
		<form method="post" action="sPostTeam">
			Name: <input type="text" name="name">
			<br>
			Sport:
			<select type="text" name="sport" required>
				<% for(int i=0; i<listSport.size(); i++ ){ %>     
			       <option><%=listSport.get(i).getName()%></option>
			    <%} %> 
			</select>
			<br>
			User team:
			<select type="text" name="member" multiple="multiple" required>
				<% for(int i=0; i<listUsers.size(); i++ ){ %>     
			       <option><%=listUsers.get(i).getFirst_name()%></option>
			    <%} %> 
			</select>
			<br>
			<br>
			<button type="submit" class="btn btn-primary">Create</button>
			<a href="Teams.jsp"><button class="btn btn-default" type="button">Go back</button></a>
		</form>
	</div>
</body>
</html>