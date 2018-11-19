<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idScenario", id);
Queries c = new Queries();
List<Scenario> l = c.getScenario(Integer.parseInt(id));
List<Sport> sport = c.getSport(l.get(0).getIdSport());
List<CompanyUser> company = c.getCompanyUser(l.get(0).getIdCompanyUser());
List<Sport> listSport = c.getSports();
List<CompanyUser> listCompany = c.getCompanyUsers();
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Scenario: <%=l.get(0).getIdScenario()%></title>
</head>
<body>
	<div align="center" style="margin-top: 40px;">
		<b size="36"><u>Scenario <%=l.get(0).getIdScenario()%> data:</u></b>
		<br>
		<form method="post" action="sModifyScenario">
			Sport: <select type="text" name="sport" value="<%=sport.get(0).getName() %>" required>
				<% for(int i=0; i<listSport.size(); i++ ){ %>     
			       <option><%=listSport.get(i).getName()%></option>
			    <%} %> 
			</select>
			<br>
			Price: <input type="text" name="price" value="<%=l.get(0).getPrice() %>" required>
			<br>
			<%if (l.get(0).getIsIndoor()){ %>
				Is Indoor: <select type="text" name="isIndoor" value="Yes" required>
				       			<option value="1">Yes</option>
			    	  			<option value="0">No</option>	
			    			</select>
				<br>
			<%}else{ %>
				Is Indoor: <select type="text" name="isIndoor" value="No" required>
				       			<option value="0">No</option>
			    	  			<option value="1">Yes</option>	
			    			</select>
				<br>
			<%} %>
			Capacity: <input type="text" name="capacity" value="<%=l.get(0).getCapacity() %>" required>
			<br>
			Company name: <select type="text" name="company" value="<%=company.get(0).getCompanyName() %>" required>
				<% for(int i=0; i<listCompany.size(); i++ ){ %>     
			       <option><%=listCompany.get(i).getCompanyName()%></option>
			    <%} %> 
			</select>
			<br>
			Date: <input type="date" name="date" value="<%=l.get(0).getDateScenario() %>" required>
			<br>
			<br>
		  	<button type="submit" class="btn btn-primary">Modify</button>
		  	<a href="DetailScenario.jsp?id=<%=l.get(0).getIdScenario()%>"><button class="btn btn-default" type="button">Go back</button></a>
	</form>
	</div>
	
</body>
</html>