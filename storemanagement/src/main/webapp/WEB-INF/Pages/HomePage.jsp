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

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 30%;
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

.blink {
	color:black;
	font-family: sans-serif;
	position:middle;
	margin-left: auto;
	margin-right: auto;
	height:30px;
}

@
keyframes blinker { 50% {
	opacity: 0;
}

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
marquee{
            background: rgb(255, 0, 0, 0.1);
}
body{
opaque:0.5;
}
</style>
<body style="background-image: url('LoginStyle/images/bg2.jpg');
">
	<%@include file="Dashboard.jsp"%>
	

	<div class="footer">
		<b> © Copyright 2022 - All Right Reserved</b>
	</div>


</body>
</html>
