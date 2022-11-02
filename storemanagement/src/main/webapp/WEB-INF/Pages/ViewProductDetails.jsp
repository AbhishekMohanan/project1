<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="view"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Details</title>
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
margin-left:14%;
}

table {
	width: 40%;
	margin-left:11%;
	margin-right:11%;
}

</style>	

</head>
<body>
 <%@include file="Dashboard.jsp"%>
	<div class="container my-2">
	<div class = "h1">
		<h1 id="h1">ProductList</h1>
		<br> <a href="/ProductAdd" class="btn btn-primary btn-sm mb-3" > Add
			Product </a>
</div>

		<view:if test="${productdetails.size()==0}">
			<h2>No Products Registered</h2>
		</view:if>

		<table border="1" class="table table-striped table-responsive-md">
			<thead>
				<tr>
					<th scope="col">ProductID</th>
					<th scope="col">Product Name</th>
					<th scope="col">Company Name</th>
					<th scope="col">Category Name</th>
					<th scope="col">Manufactured Date</th>
					<th scope="col">Expiry Date</th>
					<th scope="col">Price</th>
					<th scope="col">Actions</th>

				</tr>
			</thead>
			<view:forEach var="product" items="${productdetails}">
				<tr>
					<td>${product.getProduct_id()}</td>
					<td>${product.getProduct_name()}</td>
					<td>${product.getCompanyName()}</td>
					<td>${product.getCategory_name()}</td>
					<td>${product.getManufactured_date()}</td>
					<td>${product.getExpiry_date()}</td>
					<td>${product.getPrice()}</td>
					<td>
						<button type="sumbit" class="btn btn-primary">
							<a href='/e/${product.getProduct_id()}'>Edit</a>
						</button> &nbsp;&nbsp;&nbsp;
						<button type="sumbit" class="btn btn-danger">
							<a href='delete/${product.getProduct_id()}'> Delete</a>
						</button>
					</td>

				</tr>
			</view:forEach>



		</table>
	</div>
</body>
</html>
