<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idUser", id);
Queries c = new Queries();
List<IndividualUser> l = c.getIndividualUser(Integer.parseInt(id));
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>User: <%=l.get(0).getFirst_name()%></title>
</head>
<body>
	<div align="center">
		<b size="36"><u>User <%=l.get(0).getFirst_name()%> data:</u></b>
		<br>
		<form method="post" action="sModifyIndividualUser">
			Name: <input type="text" name="name" value="<%= l.get(0).getFirst_name() %>" required>
			<br>
			Surname: <input type="text" name="surname" value="<%= l.get(0).getMiddle_surname_initial() %>" required>
			<br>
			Last surname: <input type="text" name="last_surname" value="<%= l.get(0).getLast_surname() %>" required>
			<br>
			<%if (l.get(0).getIsPremium()){ %>
				Is Premium: <select type="text" name="isPremium" value="Yes" required>
				       			<option value="1">Yes</option>
			    	  			<option value="0">No</option>	
			    			</select>
				<br>
			<%}else{ %>
				Is Premium: <select type="text" name="isPremium" value="No" required>
				       			<option value="0">No</option>
			    	  			<option value="1">Yes</option>	
			    			</select>
				<br>
			<%} %>
			Ssn: <input type="text" name="ssn" value="<%= l.get(0).getSsn() %>" required>
			<br>
			Email: <input type="text" name="email" value="<%= l.get(0).getEmail() %>" required>
			<br>
			<%if (l.get(0).getFree_training()){ %>
				Free training: <select type="text" name="free_training" value="Yes" required>
				       			<option value="1">Yes</option>
			    	  			<option value="0">No</option>	
			    			</select>
				<br>
			<%}else{ %>
				Free training: <select type="text" name="free_training" value="No" required>
				       			<option value="0">No</option>
			    	  			<option value="1">Yes</option>	
			    			</select>
				<br>
			<%} %>
			<%if (l.get(0).getFree_facility()){ %>
				Free facility: <select type="text" name="free_facility" value="Yes" required>
				       			<option value="1">Yes</option>
			    	  			<option value="0">No</option>	
			    			</select>
				<br>
			<%}else{ %>
				Free facility: <select type="text" name="free_facility" value="No" required>
				       			<option value="0">No</option>
			    	  			<option value="1">Yes</option>	
			    			</select>
				<br>
			<%} %>
			Rented hours: <input type="tex" name="rented_hours" value="<%= l.get(0).getRented_hours() %>" required>
			<br>
			Trained hours: <input type="text" name="trained_hours" value="<%= l.get(0).getTrained_hours() %>" required>
			<br>
			City: <input type="text" name="city" value="<%= l.get(0).getCity() %>" required>
			<br>
			Address: <input type="text" name="address" value="<%= l.get(0).getAddress() %>" required>
			<br>
			Postal code: <input type="text" name="postal_code" value="<%= l.get(0).getPostal_code() %>" required>
			<br>
			Phone: <input type="text" name="phone" value="<%= l.get(0).getPhone() %>" required>
			<br>
		  	<button type="submit" class="btn btn-primary">Modify</button>
		  	<a href="DetailIndividualUser.jsp?id=<%=l.get(0).getId_IndividualUser()%>"><button class="btn btn-default" type="button">Go back</button></a>
		</form>
	</div>
	
</body>
</html>