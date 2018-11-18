<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Users</title>
</head>
<%
Queries q = new Queries();
List<TrainerUser> listTrainers = q.getTrainerUsers();
%>
<body>
	<div align="center">
	<h1>List of trainer users</h1>
	<% for(int i=0; i<listTrainers.size(); i++ ){ %>     
	      <%=listTrainers.get(i).getFirst_name()%> 
	      <a href="DetailTrainerUser.jsp?id=<%=listTrainers.get(i).getId_TrainerUser()%>"><button class="btn btn-default">See details</button></a>
	      <br>
   	<%} %>
   	<a href="PostTrainerUser.jsp"><button class="btn btn-primary">Create trainer user</button></a>
   	<a href="MainUser.jsp"><button class="btn btn-default">Go back</button></a>
	</div>
	
</body>
</html>