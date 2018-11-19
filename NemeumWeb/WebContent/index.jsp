<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Administrator page!</title>
  </head>
  <body>
    <h1 align="center">Welcome to the administrator page!</h1>
    <br>
    <img src="nemeum_logo.png" width="200px" height="300px" hspace="600"></img>
    <br>
    <br>
    <form method="post" action="sWelcomePage">
    	<div style="margin-left:550px">
	    	Username: <input type="text" name="username">
	    	<br>
		    Password: <input type="password" name="password" style="margin-left:5px;">
    	</div>
    	<br>
	    <div class="col-md-12 text-center">
	    	<button type="submit" class="btn btn-primary">Login</button>
	    </div>
	    <br>
	    <div style="margin-left:610px">
	    <%
		    if(null != request.getAttribute("errorMessage"))
		    {
		        out.println(request.getAttribute("errorMessage"));
		    }
		%>
		</div>
    </form>
  </body>
</html>