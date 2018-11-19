<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idEvent", id);
Queries c = new Queries();
List<Event> event = c.getEvent(Integer.parseInt(id));
List<CompanyUser> company = null;
if(event.get(0).getId_CompanyUser() != null){
	 company = c.getCompanyUser(event.get(0).getId_CompanyUser());
}
List<Sport> sport = c.getSport(event.get(0).getIdSport());
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Event: <%=event.get(0).getIdEvent()%></title>
</head>
<body>
	<div align="center" style="margin-top: 40px;">
		<b size="36"><u>Event <%=event.get(0).getIdEvent()%> data:</u></b>
		<br>
		Sport: <%=sport.get(0).getName() %>
		<br>
		Company: <a href="DetailCompanyUser.jsp?id=<%=company.get(0).getId_CompanyUser()%>"><%=company.get(0).getCompanyName() %></a> 
		<br>
		<%if (event.get(0).getIsIndoor()){ %>
			Is Indoor: Yes.
			<br>
		<%}else{ %>
			Is Indoor: No.
			<br>
		<%} %>
		Capacity: <%=event.get(0).getCapacity() %>
		<br>
		Price: <%=event.get(0).getPrice() %>
		<br>
		City: <%=event.get(0).getCity() %>
		<br>
		Address: <%=event.get(0).getAddress() %>
		<br>
		Postal code: <%=event.get(0).getPostalCode() %>
		<br>
		Phone: <%=event.get(0).getPhone() %>
		<br>
		Date: <%=event.get(0).getDateEvent() %>
		<br>
		<br>
		<form method="post" action="sDeleteEvent">
			<a href="ModifyEvent.jsp?id=<%=event.get(0).getIdEvent()%>"><button class="btn btn-primary" type="button">Modify</button></a>
		  	<button class="btn btn-danger" type="submit">Delete</button>
		</form>
		<br>
	  	<a href="Events.jsp"><button class="btn btn-default">Go back</button></a>
	</div>
	
</body>
</html>