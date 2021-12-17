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
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
* {
   font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
}
.post h1 {
   font-size: 40px;
   text-align: center;
   margin: 30px 10px;
}

.navbar {
  margin-bottom: 50px;
  border-radius: 0;
}
    
.add-btn {
   padding: 10px 0px;
   color: #000;
}
 footer {
   background-color: #f2f2f2;
   padding: 25px;
}
.hover-obj {
   display: none;
   background-color: white;
}
.panel:hover .hover-obj {
   display: block;
}
.delete-btn {
   position: absolute;
   top: 5px; right: 20px;
   background: none;
   border: none;
   color: #ccc;
}
.edit-btn {
   position: absolute;
   top: 5px; right: 45px;
   background: none;
   border: none;
   color: #ccc;
}
</style>
<script>
   function delete_ok(id) {
      var a = confirm("정말로 삭제하겠습니까?");
      if (a)
         location.href='deleteok/' + id;
   }
   function GenreList(){
       var action_src = "/movie/movie/genre/" + document.getElementsByName("genre")[0].value;
       var your_form = document.getElementById('gettingGenre');
       your_form.action = action_src ;
   }
</script>
</head>
<body>
   <div class="post">
   <h1><b>Movie List</b></h1>
   
   <nav class="navbar navbar-inverse">
     <div class="container-fluid">
       <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>                        
         </button>
         <a class="navbar-brand" href="#">Movie</a>
       </div>
       <div class="collapse navbar-collapse" id="myNavbar">
         <ul class="nav navbar-nav">
           <li class="active"><a href="#">Home</a></li>
           <li><a href="add">Add New Movie</a></li>
           <li><a href="/movie/movie/dateorder">sort by Release date</a></li>
           <li><a href="/movie/movie/list">sort by ID desc</a></li>
         </ul>
         <ul class="nav navbar-nav navbar-right">
           <li><form id="gettingGenre" onsubmit="GenreList()">
             <select name="genre">
                <c:forEach items="${list}" var="u">
                   <option value="${u.genre}">${u.genre}</option>
                </c:forEach>
             </select>
             <input type="submit" value="Search">
            </form>
         </li>
         </ul>
       </div>
     </div>
   </nav>
   
   <div class="container">
      <div class ="row">
         <c:forEach items="${list}" var="u">
            <div class="col-sm-4">
               <div class="panel panel-success">
                  <div><button class="delete-btn" onclick="delete_ok('${u.seq}')">✕</button></div>
                  <div class="edit-btn"><a href="editform/${u.seq}">Edit</a></div>
                 <div class="panel-heading">${u.title}<br>(${u.releasedDate})</div>
                 <div class="panel-body"><img src="${u.photo}" width="200" alt="Image">
                 ${u.rating}/10</div>
                 <div class="panel-body">${u.genre} / ${u.author} / ${u.length}</div>
                 <div class="panel-body hover-obj"><b>Plot</b><hr> ${u.plot}</div>
               </div>
             </div>
         </c:forEach>
      </div>
   </div>
   <!--  
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
            <td><img src="${u.photo}" width="100"></td>
            <td>${u.author}</td>
            <td>${u.plot}</td>
            <td>${u.length}</td>
            <td>${u.releasedDate}</td>
            <td>${u.rating}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
         </tr>
      </c:forEach>
   </table> -->
   <br />
   </div>
</body>
</html>