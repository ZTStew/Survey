<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Survey Complete</title>
</head>
<body>
	<h1>Thank you for your input.</h1>
	<h2>What you entered: </h2>
	<h3>Name: <c:out value="${name}"/></h3>
	<h3>Location: <c:out value="${location}"/></h3>
	<h3>Favorite Language: <c:out value="${language}"/></h3>
	<h3>Comment: <c:out value="${comment}"/></h3>
	
	<form action="/back" method="POST">
		<input type="submit" value="Go Back">
	</form>

</body>
</html>