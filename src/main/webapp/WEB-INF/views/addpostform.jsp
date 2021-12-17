<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
}
body {
    background-color: #eee;
}

.add {
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

.tab-input {
    width: 100%;
}

.tab-input input {
    box-sizing: border-box;
    width: 90%;
    border: none;
    outline: none;
    padding: 15px 10px;
    margin: 5px 0;
    background-color: #e3f1e3;
}

.tab-input textarea {
	box-sizing: border-box;
    width: 90%;
    border: none;
    outline: none;
    padding: 15px 10px;
    margin: 5px 0;
    background-color: #e3f1e3;
}

.tab-add_post {
	width: 100%;
}
.tab-add_post td {
	width: 50%;
}

.btn-add_post {
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

.btn-add_post:hover {
    box-shadow: 2px 0px 10px 2px #00000022;
}

.btn-add_post:active {
    transform: translateY(5%);
}
</style>
</head>
<body>
<div class="add">
<h1>Add New Post</h1>
<form action="addok" method="post">
<table class="tab-input">
<tr><td>Genre:</td><td><input type="text" name="genre"/></td></tr>
<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
<tr><td>Photo(link):</td><td><input type="text" name="photo"/></td></tr>
<tr><td>Author:</td><td><input type="text" name="author"/></td></tr>
<tr><td>Length:</td><td><input type="text" name="length"/></td></tr>
<tr><td>Rating:</td><td><input type="text" name="rating"/></td></tr>
<tr><td>Release Date:</td><td><input type="text" name="releasedDate"/></td></tr>
<tr><td>Plot:</td><td><textarea cols="50" rows="5" name="plot"></textarea></td></tr>
</table>
<table class="tab-add_post">
<tr>
<td><button class="btn-add_post" type="button" onclick="location.href='list'">View All Records</button></td>
<td><button class="btn-add_post" type="submit">Submit</button></td>
</tr>
</table>
</form>
</div>

</body>
</html>