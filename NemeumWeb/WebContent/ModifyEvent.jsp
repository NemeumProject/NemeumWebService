<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idEvent", id);
Queries c = new Queries();
List<Event> l = c.getEvent(Integer.parseInt(id));
List<Sport> sport = c.getSport(l.get(0).getIdSport());
List<CompanyUser> company = c.getCompanyUser(l.get(0).getId_CompanyUser());
List<Sport> listSport = c.getSports();
List<CompanyUser> listCompany = c.getCompanyUsers();
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Event: <%=l.get(0).getIdEvent()%></title>
</head>
<body>
	<div align="center" style="margin-top: 40px;">
		<b size="36"><u>Event <%=l.get(0).getIdEvent()%> data:</u></b>
		<br>
		<form method="post" action="sModifyEvent">
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
			City: <input type="text" name="city" value="<%=l.get(0).getCity() %>" required>
			<br>
			Address: <input type="text" name="address" value="<%=l.get(0).getAddress() %>" required>
			<br>
			Postal code: <input type="text" name="postal_code" value="<%=l.get(0).getPostalCode() %>" required>
			<br>
			Phone: <input type="text" name="phone" value="<%=l.get(0).getPhone() %>" required>
			<br>
			Date: <input type="date" name="date" value="<%=l.get(0).getDateEvent() %>" required>
			<br>
			<br>
		  	<button type="submit" class="btn btn-primary">Modify</button>
		  	<a href="DetailEvent.jsp?id=<%=l.get(0).getIdEvent()%>"><button class="btn btn-default" type="button">Go back</button></a>
	</form>
	</div>
	
</body>
</html>