<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
Queries c = new Queries();
List<IndividualUser> listIndividual = c.getIndividualUser(Integer.parseInt(id));
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User: <%=listIndividual.get(0).getFirst_name()%></title>
</head>
<body>
	<b size="36"><u>User data:</u></b>
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
  	<a href="IndividualUser.jsp"><button>Go back</button></a>
</body>
</html>