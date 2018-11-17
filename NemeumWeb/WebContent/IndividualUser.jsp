<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users</title>
</head>
<%
Queries q = new Queries();
List<IndividualUser> listIndividual = q.getIndividualUsers();
%>
<body>
	<% for(int i=0; i<listIndividual.size(); i++ ){ %>     
	      <%=listIndividual.get(i).getFirst_name()%> 
	      <a href="DetailIndividualUser.jsp?id=<%=listIndividual.get(i).getId_IndividualUser()%>"><button>See details</button></a>
	      <br>
   	<%} %>
   	<a href="MainUser.jsp"><button>Go back</button></a>
</body>
</html>