<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="view"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	<style>
 
h2 {
	text-align: center;
	
}

a:link, a:visited {
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

a:hover, a:active {
	
}
body{
margin-top:10%;

}
.h1{
margin-left:16%;
}

table {
	width: 60%;
	margin-left:16%;
}
.main_card{
	  display:flex;
		justify-content:space-around;
	margin-left:16%;
	
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 30%;
  color:blue;
 
  
}

		.card1:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}
p{
    margin-left:  3em;
    padding-top: 1em;
    margin-top: 1em;
}
.part2{
    display: grid;
    grid-template-columns: 1fr 1fr;
    margin: 1em;
    padding: 1em;
      
    
}
h4{
    margin: 1em;
	align:right;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

b {
  padding: 2px 16px;
}
</style>	
	
<body>
<%@include file="AdminDashboard.jsp"%>
<div class="container my-2">
	<div class = "h1">
		<h1 id="h1">Welcome Admin  ${sess}!!!</h1>
</div>

	<div class="main_card">
<div class="card">
    <p><b>Employees Details </b></p> 
    <a href="/viewemployee "><div class="part2">  <img src="LoginStyle/images/boy.png" alt="Avatar" style="width:70%">
  <h4><b></b></h4> 
    </div>
</div></a>
	<div class="card card1">
    <p><b>Supplier List</b></p> 
    <div class="part2"> <a href="/ "><img src="LoginStyle/images/shopping-basket.png" alt="Avatar" style="width:70%"></a>
  
    <h4><b>50</b></h4> 
    </div>
</div>

<div class="card">
    <p><b> Company List</b></p> 
    <div class="part2"><a href="/ "><img src="LoginStyle/images/product.png" alt="Avatar" style="width:70%">
  <h4><b></b></h4> 
    </div>
	</div>
</div>
	
</div>

<br>
<div class="main_card">
<div class="card">
    <p><b>Category Details </b></p> 
    <div class="part2"> <a href="/ "> <img src="" alt="Avatar" style="width:70%"></a>
  <h4><b></b></h4> 
    </div>
</div>
	<div class="card card1">
    <p><b>Product List</b></p> 
    <div class="part2"> <a href="/ "><img src="" alt="Avatar" style="width:70%"></a>
  
    <h4><b>50</b></h4> 
    </div>
</div>

<div class="card">
    <p><b>Bills</b></p> 
    <div class="part2"><a href="/ "><img src="" alt="Avatar" style="width:70%"></a>
  <h4><b></b></h4> 
    </div>
	</div>
</div>
	
	<br>
<div class="main_card">
<div class="card">
    <p><b> Daily Reports  </b></p> 
    <div class="part2"> <a href="/ "> <img src="" alt="Avatar" style="width:70%"></a>
  <h4><b></b></h4> 
    </div>
</div>
</div>
		
</body>
</html>
