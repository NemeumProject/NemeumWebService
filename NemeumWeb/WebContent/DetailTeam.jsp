<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idTeam", id);
Queries c = new Queries();
List<Team> team = c.getTeam(Integer.parseInt(id));
List<Team_IndividualUser> listUsers = c.getUserOfTeam(Integer.parseInt(id));
List<Sport> sport = c.getSport(team.get(0).getIdSport());
int iter = 1;
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Team: <%=team.get(0).getName()%></title>
</head>
<body>
<form method="post" action="sDeleteMember"></form>
	<div align="center" style="margin-top: 40px;">
		<b size="36"><u>Team <%=team.get(0).getName()%> data:</u></b>
		<br>
		Name: <%=team.get(0).getName()%>
		<br>
		Sport: <%=sport.get(0).getName()%>
		<br>
		<%for(Team_IndividualUser user: listUsers) {%>
			Member <%=iter %>: <a href="DetailIndividualUser.jsp?id=<%=c.getIndividualUser(user.getId_IndividualUser()).get(0).getId_IndividualUser() %>"><%=c.getIndividualUser(user.getId_IndividualUser()).get(0).getFirst_name() %> <%=c.getIndividualUser(user.getId_IndividualUser()).get(0).getMiddle_surname_initial() %></a> 
			<br>
			<%iter++; %>
		<%} %>
		<br>
		<br>
		<form method="post" action="sDeleteTeam">
			<a href="ModifyTeam.jsp?id=<%=team.get(0).getIdTeam()%>"><button class="btn btn-primary" type="button">Modify</button></a>
		  	<button class="btn btn-danger" type="submit">Delete</button>
		</form>
		<br>
	  	<a href="Teams.jsp"><button class="btn btn-default">Go back</button></a>
	</div>
	
</body>
</html>