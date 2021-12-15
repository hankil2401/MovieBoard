<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Java class BoardDAO 와 BoardVO 를 import 함 -->
<%@page import="com.teamprj.movie.MovieDAO,com.teamprj.movie.MovieVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Movie</title>
<style>
#edit td:ntt-child(odd) {
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
</head>
<body>

<h1>Edit Movie</h1>
<form:form commandName="movieVO" method="POST" action="../editok">
	<form:hidden path="seq" />
	<table id="edit">
		<tr><td>Genre</td>
		<td><form:input path="genre" value="${u.genre}" /></td></tr>
		<tr><td>Title</td>
		<td><form:input path="title" value="${u.title}" /></td></tr>
		<tr><td>Author</td>
		<td><form:input path="author" value="${u.author}" /></td></tr>
		<tr><td>Length</td>
		<td><form:input path="length" value="${u.length}" /></td></tr>
		<tr><td>Rating</td>
		<td><form:input path="rating" value="${u.rating}" /></td></tr>
		<tr><td>Release Date</td>
		<td><form:input path="releasedDate" value="${u.releasedDate}" /></td></tr>
		<tr><td>Plot</td>
		<td><form:textarea cols="50" rows="5" path="plot" value="${u.plot}"/></td></tr>
	</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="Cancel" onclick="history.back()"/>
</form:form>
</body>
</html>