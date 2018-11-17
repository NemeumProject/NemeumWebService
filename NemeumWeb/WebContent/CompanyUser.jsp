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
List<CompanyUser> listCompany = q.getCompanyUsers();
%>
<body>
	<% for(int i=0; i<listCompany.size(); i++ ){ %>     
	      <%=listCompany.get(i).getCompanyName()%> 
	      <a href="DetailCompanyUser.jsp?id=<%=listCompany.get(i).getId_CompanyUser()%>"><button>See details</button></a>
	      <br>
   	<%} %>
   	<a href="MainUser.jsp"><button>Go back</button></a>
</body>
</html>