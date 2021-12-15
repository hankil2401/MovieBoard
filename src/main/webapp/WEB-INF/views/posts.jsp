<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.teamprj.movie.MovieDAO,com.teamprj.movie.MovieVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}
#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}
#list tr:nth-child(even) {
	background-color: #f2f2f2;
}
#list tr:hover {
	background-color: #ddd;
}
#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href='deleteok/' + id;
	}
</script>
</head>
<body>
	<h1>영화 List</h1>
	<table id="list" width="90%">
		<tr>
			<th>Id</th>
			<th>Genre</th>
			<th>Title</th>
			<th>Photo</th>
			<th>Author</th>
			<th>Plot</th>
			<th>Length</th>
			<th>Release Date</th>
			<th>Rating</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.seq}</td>
				<td>${u.genre}</td>
				<td>${u.title}</td>
				<td><img src="${u.photo}"></td>
				<td>${u.author}</td>
				<td>${u.plot}</td>
				<td>${u.length}</td>
				<td>${u.releasedDate}</td>
				<td>${u.rating}</td>
				<td><a href="editform/${u.seq}">Edit</a></td>
				<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="add">Add New Movie</a>
</body>
</html>