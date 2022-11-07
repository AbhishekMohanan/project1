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

body {
	margin-top: 10%;
}

.h1 {
	margin-left: 16%;
}

table {
	width: 60%;
	margin-left: 16%;
}

.main_card {
	display: flex;
	justify-content: space-around;
	margin-left: 16%;
}
.card_main {
	display: flex;
	justify-content: space-around;
	margin-left: 16%;
}


.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 30%;
	height: 30%;
	color: blue;
}
.main {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 30%;
	height: 30%;
	color: blue;
}


.card1:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

p {
	margin-left: 3em;
	padding-top: 1em;
	margin-top: 1em;
}

.part2 {
	display: grid;
	grid-template-columns: 1fr 1fr;
	margin: 1em;
	padding: 1em;
}

h4 {
	margin: 1em;
	align: right;
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

b {
	padding: 2px 16px;
}
.footer {
	position:fixed;
	left: 2px;
	bottom: 0px;
	right: 10px;
	width: 125%;
	background-color: #072c66;
    color: white;
	text-align:center;
}
</style>
<body>
	<%@include file="AdminDashboard.jsp"%>
	<div class="container my-2">
		<div class="h1">
			<h1 id="h1">Welcome Admin !!!</h1>
			<br>
		</div>
		

		<div class="main_card">
			<div class="card">
				<p>
					<b>EMPLOYEE DETAILS</b>
				</p>
				<div class="part2"><a href="/emp">
					<img src="LoginStyle/images/boy.png" alt="Avatar"
						style="width: 100%"></a>
					
				</div>
			</div>
			<div class="card">
				<p>
					<b>SUPPLIER LIST</b>
				</p>
				<div class="part2"><a href="">
					<img src="LoginStyle/images/sup1.jpg" alt="Avatar"
						style="width:100%","height=20%"></a>

									</div>
			</div>
			<div class="card">
				<p>
					<b>COMPANY LIST</b>
				</p>
				<div class="part2"><a href="">
					<img src="LoginStyle/images/product.png" alt="Avatar"
						style="width: 100%"></a>
				</div>
			</div>
			
		</div><br>
		<div class="card_main">
	<div class="main">
				<p>
					<b>CATEGORY DETAILS</b>
				</p>
				<div class="part2"><a href="">
					<img src="LoginStyle/images/shopping-basket.png" alt="Avatar"
						style="width: 110%"></a>
					
				</div>
			</div>
						<div class="card">
				<p>
					<b>PRODUCTS LIST</b>
				</p>
				<div class="part2"><a href="">
					<img src="LoginStyle/images/product.png" alt="Avatar"
						style="width:95%"></a>

					
				</div>
			</div>
			<div class="main">
				<p>
					<b>BILLING</b>
				</p>
				<div class="part2"><a href="/Bill">
					<img src="LoginStyle/images/bill.jpeg" alt="Avatar"
						style="width: 110%"></a>
					
				</div>
			</div>
			
			
		</div>

	</div>
	<div class="footer">
		<b> © Copyright 2022 - All Right Reserved</b>
	</div>
	

</body>
</html>
