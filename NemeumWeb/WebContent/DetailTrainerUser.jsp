<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idTrainer", id);
Queries c = new Queries();
List<TrainerUser> listTrainer = c.getTrainerUser(Integer.parseInt(id));
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Trainer: <%=listTrainer.get(0).getFirst_name()%></title>
</head>
<body>
	<div align="center">
		<b size="36"><u>Trainer <%=listTrainer.get(0).getFirst_name()%> data:</u></b>
		<br>
		Surname: <%= listTrainer.get(0).getMiddle_surname_initial() %>
		<br>
		Last surname: <%=listTrainer.get(0).getLast_surname() %>
		<br>
		<%if (listTrainer.get(0).getIsPremium()){ %>
			Is Premium: Yes.
			<br>
		<%}else{ %>
			Is Premium: No.
			<br>
		<%} %>
		Ssn: <%=listTrainer.get(0).getSsn() %>
		<br>
		Email: <%=listTrainer.get(0).getEmail() %>
		<br>
		Teached hours: <%=listTrainer.get(0).getTeached_hours()%>
		<br>
		City: <%=listTrainer.get(0).getCity() %>
		<br>
		Address: <%=listTrainer.get(0).getAddress() %>
		<br>
		Postal code: <%=listTrainer.get(0).getPostal_code() %>
		<br>
		Phone: <%=listTrainer.get(0).getPhone() %>
		<br>
		<form method="post" action="sDeleteTrainerUser">
			<a href="ModifyTrainerUser.jsp?id=<%=listTrainer.get(0).getId_TrainerUser()%>"><button class="btn btn-primary" type="button">Modify</button></a>
		
		  	<button type="submit" class="btn btn-danger">Delete</button>
		</form>
		<br>
	  	<a href="TrainerUser.jsp" class="btn btn-default"><button>Go back</button></a>
	</div>
	
</body>
</html>