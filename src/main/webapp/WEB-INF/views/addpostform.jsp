<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#edit td:nth-child(odd) {
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id="edit">
<tr><td>Category:</td><td><input type="text" name="category"/></td></tr>
<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
<tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
</table>
<button type="button" onclick="location.href='list'">View All Records</button>
<button type="submit">Submit</button>
</form>

</body>
</html>