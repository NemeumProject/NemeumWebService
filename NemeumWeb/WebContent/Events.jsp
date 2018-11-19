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
<title>Events</title>
</head>
<%
Queries q = new Queries();
List<Event> listEvents = q.getEvents();
%>
<body>
	<div align="center">
		<h1>List of events</h1>
		<% for(int i=0; i<listEvents.size(); i++ ){ %>     
		      Scenario: <%=listEvents.get(i).getIdEvent()%> 
		      <a href="DetailEvent.jsp?id=<%=listEvents.get(i).getIdEvent()%>"><button class="btn btn-default">See details</button></a>
		      <br>
	   	<%} %>
	   	<br>
	   	<a href="PostEvent.jsp"><button class="btn btn-primary">Create event</button></a>
	   	<a href="MainPage.jsp"><button class="btn btn-default">Go back</button></a>
	</div>
</body>
</html>