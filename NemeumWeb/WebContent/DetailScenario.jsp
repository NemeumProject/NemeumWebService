<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idScenario", id);
Queries c = new Queries();
List<Scenario> scenario = c.getScenario(Integer.parseInt(id));
List<Sport> sport = c.getSport(scenario.get(0).getIdSport());
List<CompanyUser> company = c.getCompanyUser(scenario.get(0).getIdCompanyUser());
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Scenario: <%=scenario.get(0).getIdScenario()%></title>
</head>
<body>
	<div align="center">
		<b size="36"><u>Scenario <%=scenario.get(0).getIdScenario()%> data:</u></b>
		<br>
		Sport: <%=sport.get(0).getName() %>
		<br>
		Price: <%=scenario.get(0).getPrice() %>
		<br>
		<%if (scenario.get(0).getIsIndoor()){ %>
			Is Indoor: Yes.
			<br>
		<%}else{ %>
			Is Indoor: No.
			<br>
		<%} %>
		Capacity: <%=scenario.get(0).getCapacity() %>
		<br>
		Company name: <%=company.get(0).getCompanyName() %>
		<br>
		Date: <%=scenario.get(0).getDateScenario() %>
		<br>
		<form method="post" action="sDeleteScenario">
			<a href="ModifyScenario.jsp?id=<%=scenario.get(0).getIdScenario()%>"><button class="btn btn-primary" type="button">Modify</button></a>
		  	<button class="btn btn-danger" type="submit">Delete</button>
		</form>
		<br>
	  	<a href="Scenarios.jsp"><button class="btn btn-default">Go back</button></a>
	</div>
	
</body>
</html>