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
* {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
}
body {
    background-color: #eee;
}

.edit {
    position: absolute;
	display: block;
	width: 450px;
	text-align: center;
    top: 50%; left: 50%;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 30px;
    border-radius: 5px;
    box-shadow: 2px 0px 25px 2px #00000022;
}

.edit-input {
    width: 100%;
}

.edit-input input {
    box-sizing: border-box;
    width: 90%;
    border: none;
    outline: none;
    padding: 15px 10px;
    margin: 5px 0;
    background-color: #e3f1e3;
}

.edit-input textarea {
	box-sizing: border-box;
    width: 90%;
    border: none;
    outline: none;
    padding: 15px 10px;
    margin: 5px 0;
    background-color: #e3f1e3;
}

.tab-edit_post {
	width: 100%;
}
.tab-edit_post td {
	width: 50%;
}

.btn-edit_post {
    width: 90%; 
    padding: 15px;
    margin: 5px 0;
    border: none;
    outline: none;
    background-color: white;
    border-radius: 5px;
    color: #5ba75b;
    font-weight: 900;
    font-size: 18px;
    transition: all .1s;
    box-shadow: 2px 0px 5px 2px #00000022;
}

.btn-edit_post:hover {
    box-shadow: 2px 0px 10px 2px #00000022;
}

.btn-edit_post:active {
    transform: translateY(5%);
}
</style>
</head>
<body>
<div class="edit">
<h1>Edit Movie</h1>
<form:form commandName="movieVO" method="POST" action="../editok">
	<form:hidden path="seq" />
	<table class="edit-input">
		<tr><td>Genre</td>
		<td><form:input path="genre" value="${u.genre}" /></td></tr>
		<tr><td>Title</td>
		<td><form:input path="title" value="${u.title}" /></td></tr>
		<tr><td>Photo</td>
		<td><form:input path="photo" value="${u.photo}" /></td></tr>
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
	<table class="tab-edit_post">
		<tr><td><button class="btn-edit_post" type="submit">Edit</button></td>
		<td><button class="btn-edit_post" type="cancel" onclick="history.back()">Cancel</button>
	</table>
</form:form>
</div>
</body>
</html>