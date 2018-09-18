<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Survey</title>
</head>
<body>
	<h1>survey</h1>
		<form action="/process" method="POST">
			<c:out value="${error}"/>
			<p>Name: <input type="text" name="name"></p>
			<p>Language: <select name="language">
				<option>Python</option>
				<option>C++</option>
				<option>JavaScript</option>
				<option>Java</option>
				<option>Ruby</option>
			</select></p>
			<p>Location: <select name="location">
				<option>Loc 1</option>
				<option>Loc 2</option>
				<option>Loc 3</option>
				<option>Loc 4</option>
			</select></p>
			<p>Comment:</br>
				<textarea name="comment" rows="5"></textarea>
			</p>
			<input type="submit">
		</form>
</body>
</html>