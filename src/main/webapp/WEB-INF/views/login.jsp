<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
* {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
}
body {
    background-color: #eee;
}

.main {
    position: absolute;
	display: block;
	width: 300px;
	text-align: center;
    top: 50%; left: 50%;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 30px;
    border-radius: 5px;
    box-shadow: 2px 0px 25px 2px #00000022;
}

.main h1 {
	font-size: 40px;
}

.main table {
    width: 100%;
}

.main input {
    box-sizing: border-box;
    width: 90%;
    border: none;
    outline: none;
    padding: 15px 10px;
    margin: 5px 0;
    background-color: #e3f1e3;
}

.btn-login {
    width: 90%; 
    padding: 15px;
    margin: 20px 0;
    border: none;
    outline: none;
    background-color: #9fee9f;
    border-radius: 5px;
    color: #5ba75b;
    font-weight: 900;
    font-size: 18px;
    transition: all .1s;
}

.btn-login:hover {
    box-shadow: 2px 0px 10px 2px #00000022;
}

.btn-login:active {
    transform: translateY(5%);
}

</style>
</head>
<body>
	<div class="main">
		<h1>Movie List</h1>
		<form method="post" action="loginok">
			<table>
				<tr><td><input type='text' name='userid' placeholder="userid"/></td></tr>
				<tr><td><input type='password' name='password'  placeholder="password" /></td></tr>
                <tr><td><button class="btn-login" type='submit'>LOGIN</button></td></tr>
			</table>
			
		</form>
	</div>
</body>
</html>