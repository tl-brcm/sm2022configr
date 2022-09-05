<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Voonair Airlines</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 20px Montserrat, sans-serif;
    line-height: 1.8;
    color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
    background-color: #1abc9c; /* Green */
    color: #ffffff;
  }
  .bg-2 { 
    background-color: #474e5d; /* Dark Blue */
    color: #ffffff;
  }
  .bg-3 { 
    background-color: #ffffff; /* White */
    color: #555555;
  }
  .bg-4 { 
    background-color: #2f2f2f; /* Black Gray */
    color: #fff;
  }
  .container-fluid {
    padding-top: 70px;
    padding-bottom: 70px;
  }
  .navbar {
    padding-top: 15px;
    padding-bottom: 15px;
    border: 0;
    border-radius: 0;
    margin-bottom: 0;
    font-size: 12px;
    letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
    color: #1abc9c !important;
  }
  </style>
</head>
<body>
<%@ page import = "java.util.*" %>
<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Voonair Airlines</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Search</a></li>
        <li><a href="#">Buy</a></li>
        <li><a href="/voonair/jsps/logout.jsp">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- First Container -->
<div class="container bg-1 text-center">
  <h3 class="margin">Travel eazy, safe, with ....</h3>
  <img src="/voonair/img/voonair_logo.png" class="img-responsive  margin" style="display:inline" alt="Bird" width="350" height="350">
</div>

<div class="container bg-1 text-center">
  <h3 class="margin">Welcome,  <%=request.getHeader("First Name")%></h3>
</div>

<!-- Second Container -->
<div class="container bg-2 text-center">
	<br/>
  <p>
	  <ul class="list-group">
		<li class="list-group-item list-group-item-success" style="width:20%">User Info</li>
	    <li class="list-group-item list-group-item-success" ><%= "Name: " + request.getHeader("First Name") + ", " + request.getHeader("Last Name")%></li>
	    <li class="list-group-item list-group-item-success"><%= "Phone Number: " +request.getHeader("Phone Number")%></li>
	    <li class="list-group-item list-group-item-success"><%= "Email Address: " +request.getHeader("EmailAddress")%></li>
	  </ul>
  </p>
  <br/>
  <!-- <a href="#" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search"></span> more about us?
  </a> -->
</div>
<!-- Footer -->
<footer class="container bg-4 text-center">
  <p><a href="#">Voonair Airlines</a></p> 
</footer>

</body>
</html>
