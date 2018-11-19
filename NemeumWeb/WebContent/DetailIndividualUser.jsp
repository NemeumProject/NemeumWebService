<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idUser", id);
Queries c = new Queries();
List<IndividualUser> listIndividual = c.getIndividualUser(Integer.parseInt(id));
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>User: <%=listIndividual.get(0).getFirst_name()%></title>
</head>
<body>
	<div align="center" style="margin-top: 40px;">
		<b size="36"><u>User <%=listIndividual.get(0).getFirst_name()%> data:</u></b>
		<br>
		Surname: <%= listIndividual.get(0).getMiddle_surname_initial() %>
		<br>
		Last surname: <%=listIndividual.get(0).getLast_surname() %>
		<br>
		<%if (listIndividual.get(0).getIsPremium()){ %>
			Is Premium: Yes.
			<br>
		<%}else{ %>
			Is Premium: No.
			<br>
		<%} %>
		Ssn: <%=listIndividual.get(0).getSsn() %>
		<br>
		Email: <%=listIndividual.get(0).getEmail() %>
		<br>
		<%if(listIndividual.get(0).getFree_training()){ %>
			Free training: Yes.
			<br>
		<%}else{ %>
			Free training: No.
			<br>
		<%} %>
		<%if(listIndividual.get(0).getFree_facility()){ %>
			Free facility: Yes.
			<br>
		<%}else{ %>
			Free facility: No.
			<br>
		<%} %>
		Rented hours: <%=listIndividual.get(0).getRented_hours() %>
		<br>
		Trained hours: <%=listIndividual.get(0).getTrained_hours() %>
		<br>
		City: <%=listIndividual.get(0).getCity() %>
		<br>
		Address: <%=listIndividual.get(0).getAddress() %>
		<br>
		Postal code: <%=listIndividual.get(0).getPostal_code() %>
		<br>
		Phone: <%=listIndividual.get(0).getPhone() %>
		<br>
		<br>
		<form method="post" action="sDeleteIndividualUser">
			<a href="ModifyIndividualUser.jsp?id=<%=listIndividual.get(0).getId_IndividualUser()%>"><button class="btn btn-primary" type="button">Modify</button></a>
		
		  	<button class="btn btn-danger" type="submit">Delete</button>
		</form>
		<br>
	  	<a href="IndividualUser.jsp"><button class="btn btn-default">Go back</button></a>
	</div>
	
</body>
</html>