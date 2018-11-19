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
List<IndividualUser> listIndividual = q.getIndividualUsers();
%>
<body>
	<div align="center" style="margin-top: 10px;">
		<h1>List of individual users</h1>
		<% for(int i=0; i<listIndividual.size(); i++ ){ %>     
		      <%=listIndividual.get(i).getFirst_name()%> 
		      <a href="DetailIndividualUser.jsp?id=<%=listIndividual.get(i).getId_IndividualUser()%>"><button class="btn btn-default">See details</button></a>
		      <br>
	   	<%} %>
	   	<br>
	   	<a href="PostIndividualUser.jsp"><button class="btn btn-primary">Create User</button></a>
	   	<a href="MainUser.jsp"><button class="btn btn-default">Go back</button></a>
	</div>
</body>
</html>