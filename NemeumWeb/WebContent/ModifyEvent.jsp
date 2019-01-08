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
List<Sport> listSport = c.getSports();
%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Modify <%=l.get(0).getTitle()%> data:</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" method="post" action="sModifyEvent">
				<span class="contact100-form-title">
					Event <%=l.get(0).getTitle()%> data:
				</span>

				Title: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="title" placeholder="Title" value="<%=l.get(0).getTitle() %>" required>
					<span class="focus-input100"></span>
				</div>

				Sport: <div class="wrap-input100 validate-input">	
					<select class="input100" type="text" name="sport" value="<%=sport.get(0).getName() %>" required>
						<% for(int i=0; i<listSport.size(); i++ ){ %>     
				       <option><%=listSport.get(i).getName()%></option>
				    	<%} %> 
					</select>
					<span class="focus-input100"></span>
				</div>
				<%if (l.get(0).getIsIndoor()){ %>
					Is Indoor: <div class="wrap-input100 validate-input">	
									<select class="input100" type="text" name="isIndoor" value="Yes" required>
						       			<option value="1">Yes</option>
					    	  			<option value="0">No</option>	
					    			</select>
					    			<span class="focus-input100"></span>
				    			</div>
					<br>
				<%}else{ %>
					Is Indoor: <div class="wrap-input100 validate-input">	
									<select class="input100" type="text" name="isIndoor" value="No" required>
						       			<option value="0">No</option>
					    	  			<option value="1">Yes</option>	
					    			</select>
					    			<span class="focus-input100"></span>
				    			</div>
					<br>
				<%} %>
				Price: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="price" placeholder="Price" value="<%=l.get(0).getPrice() %>" required>
					<span class="focus-input100"></span>
				</div>

				Address: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="address" placeholder="Address" value="<%=l.get(0).getAddress() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				City: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="city" placeholder="City" value="<%=l.get(0).getCity() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Capacity: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="capacity" placeholder="Capacity" value="<%= l.get(0).getCapacity() %>" required>
					<span class="focus-input100"></span>
				</div>

				Phone: <div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="phone" placeholder="Phone" value="<%= l.get(0).getPhone() %>" required>
					<span class="focus-input100"></span>
				</div>

				Date: <div class="wrap-input100 validate-input">
					<input class="input100" type="date" name="date" value="<%=l.get(0).getDateEvent() %>" required>
					<span class="focus-input100"></span>
				</div>
				
				Description <div class="wrap-input100 validate-input">
							<input class="input100" type="text" name="description" value="<%=l.get(0).getDescription() %>" required>		
					<span class="focus-input100"></span>
				</div>
				<%
					    if(null != request.getAttribute("errorMessage"))
					    {
					        out.println(request.getAttribute("errorMessage"));
					    }
					%>
					<br>
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" type="submit" class="btn btn-primary">Modify</button>
			  		<a href="DetailEvent.jsp?id=<%=l.get(0).getIdEvent()%>"><button class="btn btn-default" type="button">Go back</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>