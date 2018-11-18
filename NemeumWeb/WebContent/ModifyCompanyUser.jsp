<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
session.setAttribute("idUser", id);
Queries c = new Queries();
List<CompanyUser> l = c.getCompanyUser(Integer.parseInt(id));
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Company User: <%=l.get(0).getCompanyName()%></title>
</head>
<body>
	<div align="center">
		<b size="36"><u>Company User <%=l.get(0).getCompanyName()%> data:</u></b>
		<br>
		<form method="post" action="sModifyCompanyUser">
			Company name: <input type="text" name="company_name" value="<%=l.get(0).getCompanyName()%>" required>
			<br>
			Comercial name: <input type="text" name="comercial_name" value="<%= l.get(0).getComercialName() %>" required>
			<br>
			Contact person: <input type="text" name="comercial_name" value="<%= l.get(0).getContactPerson() %>" required>
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
			City: <input type="text" name="city" value="<%= l.get(0).getCity() %>" required>
			<br>
			Address: <input type="text" name="address" value="<%= l.get(0).getAddress() %>" required>
			<br>
			Postal code: <input type="text" name="postal_code" value="<%= l.get(0).getPostal_code() %>" required>
			<br>
			Phone: <input type="text" name="phone" value="<%= l.get(0).getPhone() %>" required>
			<br>
		  	<button type="submit" class="btn btn-primary">Modify</button>
		  	<a href="DetailCompanyUser.jsp?id=<%=l.get(0).getId_CompanyUser()%>"><button class="btn btn-default" type="button">Go back</button></a>
		</form>
	</div>
</body>
</html>