<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idTeam", id);
Queries c = new Queries();
List<Team> l = c.getTeam(Integer.parseInt(id));
List<Sport> sport = c.getSport(l.get(0).getIdSport());
List<Team_IndividualUser> user = c.getUserOfTeam(Integer.parseInt(id));
List<Sport> listSport = c.getSports();
List<IndividualUser> listUsers = c.getIndividualUsers();
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Team: <%=l.get(0).getName()%></title>
</head>
<body>
	<div align="center" style="margin-top: 40px;">
		<b size="36"><u>Team <%=l.get(0).getName()%> data:</u></b>
		<br>
		<form method="post" action="sModifyTeam">
			Name: <input type="text" name="name" value="<%=l.get(0).getName() %>" required>
			<br>
			Sport: <select type="text" name="sport" value="<%=sport.get(0).getName() %>" required>
				<% for(int i=0; i<listSport.size(); i++ ){ %>     
			       <option><%=listSport.get(i).getName()%></option>
			    <%} %> 
			</select>
			<br>
			<%for(Team_IndividualUser iterUser : user){ %>
				Member name: <select type="text" name="member" value="<%=c.getIndividualUser(iterUser.getId_IndividualUser()).get(0).getFirst_name()%>" required>
				<% for(int j=0; j<listUsers.size(); j++ ){ %>     
			       <option><%=listUsers.get(j).getFirst_name()%></option>
			    <%} %> 
				</select>
				<br>
			<%} %>
			<br>
			<br>
		  	<button type="submit" class="btn btn-primary">Modify</button>
		  	<a href="DetailTeam.jsp?id=<%=l.get(0).getIdTeam()%>"><button class="btn btn-default" type="button">Go back</button></a>
	</form>
	</div>
	
</body>
</html>