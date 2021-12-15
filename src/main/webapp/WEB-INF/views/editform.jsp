<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Java class BoardDAO 와 BoardVO 를 import 함 -->
<%@page import="com.teamprj.movie.MovieDAO,com.teamprj.movie.MovieVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<style>
#edit td:ntt-child(odd) {
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
</head>
<body>

<h1>Edit Form</h1>
<form:form commandName="boardVO" method="POST" action="../editok">
	<form:hidden path="seq" />
	<table id="edit">
		<tr><td>Category</td>
		<td><form:input path="category" value="${u.category}" /></td></tr>
		<tr><td>Title</td>
		<td><form:input path="title" value="${u.title}" /></td></tr>
		<tr><td>Writer</td>
		<td><form:input path="writer" value="${u.writer}" /></td></tr>
		<tr><td>Content</td>
		<td><form:textarea cols="50" rows="5" path="content" value="${u.content}"/></td></tr>
	</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="Cancel" onclick="history.back()"/>
</form:form>
</body>
</html>