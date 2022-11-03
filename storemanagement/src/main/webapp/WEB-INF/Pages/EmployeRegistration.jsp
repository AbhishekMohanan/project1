<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="value"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<style>
style>form {
	text-align: center;
	width: 20%;
}

body {
	margin-top: 8%;
}

#body {
	text-align: center;
	padding-left: 500px;
	padding-right: 400px;
	padding-top: 45px;
}

h2 {
	text-align: center;
	padding-top: 10px;
	margin-left: 8%;
}

button {
	width: 15%;
}
</style>


</head>
<body>
	<%@include file="AdminDashboard.jsp"%>
	<h2>Add Employee Details</h2>
	<div id="body">
		<form action="/addemployee" method="post" modelAttribute="employeedetails">

			<div class="form-outline mb-4">
				<input type="text" name="employee_name" id="form4Example1"
					class="form-control" /> <label class="form-label"
					for="form4Example1"> Employee Name</label>
			</div>

			<div class="form-outline mb-4">
	
				<select name="designation" id="form4Example1" class="form-control">
					<option value="" disabled>Select Employee Designation</option>
					<option value="Billing Clerk">Billing Clerk</option>
					<option value="Sales Executive">Sales Executive</option>
					<option value="Sweeper"> Sweeper<option>
					<option value="Watch Man">Watch Man</option>
					<option value="Driver">Driver</option>
				</select> <label class="form-label" for="form4Example1">Employee Designation</label>	
			</div>

			<div class="form-outline mb-4">
				<input type="date" name="dateOfBirth" value=""
					id="form4Example1" class="form-control" /> <label
					class="form-label" for="form4Example1">Date of Birth</label>
			</div>

			<div class="form-outline mb-4">
				<input type="date" name="dateofjoining" value="" id="form4Example1"
					class="form-control" /> <label class="form-label"
					for="form4Example1"> Joining Date </label>
			</div>

			<div class="form-outline mb-4">
				<input type="text" name="salary" id="form4Example1"
					class="form-control" /> <label class="form-label"
					for="form4Example1"> Salary</label>
			</div>
            <div class="form-outline mb-4">
				<input type="number" name="mobile_number" id="form4Example1"
					class="form-control" /> <label class="form-label"
					for="form4Example1"> Mobile Number</label>
			</div>
			
			<div class="form-outline mb-4">
				<input type="text" name="address" id="form4Example1"
					class="form-control" /> <label class="form-label"
					for="form4Example1"> Address</label>
			</div>
			
 

			<button type="submit" class="btn btn-primary btn-block mb-4">Add
				Employee</button>
		</form>
	</div>
</body>

</html>