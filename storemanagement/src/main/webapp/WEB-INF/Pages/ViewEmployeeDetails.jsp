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
 <%@include file="AdminDashboard.jsp"%>
	<div class="container my-2">
	<div class = "h1">
		<h1 id="h1">Employeee List</h1>
		<br>
</div>

		<view:if test="${employeedetails.size()==0}">
			<h2>No Employee Registered</h2>
		</view:if>

		<table border="1" class="table table-striped table-responsive-md">
			<thead>
				<tr>
					<th scope="col"> Employee ID</th>
					<th scope="col">Employee Name</th>
					<th scope="col">Employee Designation</th>
					<th scope="col">Salary</th>
					<th scope="col">Date of Birth</th>
					<th scope="col">Date of Joining</th>
					<th scope="col">Mobile Number</th>
					<th scope="col">Address</th>
					<th scope="col">Actions</th>

				</tr>
			</thead>
			<view:forEach var="employee" items="${employeedetails}">
				<tr>

					<td>${employee.getEmployeeid()}</td>
					<td>${employee.getEmployee_name()}</td>
					<td>${employee.getDesignation()}</td>
					<td>${employee.getSalary()}</td>
					<td>${employee.getDateOfBirth()}</td>
					<td>${employee.getDateofjoining()}</td>
					<td>${employee.getMobile_number()}</td>
					<td>${employee.getAddress()}</td>
					<td>
						<button type="sumbit" class="btn btn-danger">
							<a href='empdelete/${employee.getEmployeeid()}'> Delete</a>
						</button>
					</td>

				</tr>
			</view:forEach>



		</table>
	</div>
</body>
</html>
