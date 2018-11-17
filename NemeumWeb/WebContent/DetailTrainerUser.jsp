<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
Queries c = new Queries();
List<TrainerUser> listTrainer = c.getTrainerUser(Integer.parseInt(id));
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trainer: <%=listTrainer.get(0).getFirst_name()%></title>
</head>
<body>
	<b size="36"><u>User data:</u></b>
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
  	<a href="TrainerUser.jsp"><button>Go back</button></a>
</body>
</html>