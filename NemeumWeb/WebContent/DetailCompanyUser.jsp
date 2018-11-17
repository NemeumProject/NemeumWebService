<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.*"%>
<%@ page import="queries.*"%>
<% String id = request.getParameter("id"); 
Queries c = new Queries();
List<CompanyUser> listCompany = c.getCompanyUser(Integer.parseInt(id));
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company: <%=listCompany.get(0).getCompanyName()%></title>
</head>
<body>
	<b size="36"><u>User data:</u></b>
	<br>
	Comercial name: <%= listCompany.get(0).getComercialName() %>
	<br>
	<%if (listCompany.get(0).getIsPremium()){ %>
		Is Premium: Yes.
		<br>
	<%}else{ %>
		Is Premium: No.
		<br>
	<%} %>
	Contact person: <%=listCompany.get(0).getContactPerson() %>
	<br>
	Ssn: <%=listCompany.get(0).getSsn() %>
	<br>
	Email: <%=listCompany.get(0).getEmail() %>
	<br>
	City: <%=listCompany.get(0).getCity() %>
	<br>
	Address: <%=listCompany.get(0).getAddress() %>
	<br>
	Postal code: <%=listCompany.get(0).getPostal_code() %>
	<br>
	Phone: <%=listCompany.get(0).getPhone() %>
	<br>
  	<a href="CompanyUser.jsp"><button>Go back</button></a>
</body>
</html>