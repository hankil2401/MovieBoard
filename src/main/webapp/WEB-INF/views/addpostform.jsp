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
<form action="addok" method="post" enctype="multipart/form-data">
<table id="edit">
<tr><td>Genre:</td><td><input type="text" name="genre"/></td></tr>
<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
<tr><td>Photo(link):</td><td><input type="text" name="photo"/></td></tr>
<tr><td>Author:</td><td><input type="text" name="author"/></td></tr>
<tr><td>Length:</td><td><input type="text" name="length"/></td></tr>
<tr><td>Rating:</td><td><input type="text" name="rating"/></td></tr>
<tr><td>Release Date:</td><td><input type="text" name="releasedDate"/></td></tr>
<tr><td>Plot:</td><td><textarea cols="50" rows="5" name="plot"></textarea></td></tr>
</table>
<button type="button" onclick="location.href='list'">View All Records</button>
<button type="submit">Submit</button>
</form>

</body>
</html>