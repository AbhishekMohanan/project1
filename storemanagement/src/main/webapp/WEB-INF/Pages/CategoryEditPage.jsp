<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Categoty Details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<style>
form {
	text-align: center;
	width: 35%;
}

#body {
	text-align: center;
	padding-left: 520px;
	padding-top: 45px;
}

h2 {
	text-align: center;
	padding-top: 10px;
}

button {
	width: 15%;
}
</style>


</head>
<body>

	<h2>Edit Categoty Details</h2>
	<div id="body">
		<form:form action="/updatedcat" method="post"
			modelAttribute="categotydetails">


			<div class="form-outline mb-4">
				<input type="text" name="category_name"
					value="${Editdetails.getCategory_name()}" id="form4Example1"
					class="form-control" /> <label class="form-label"
					for="form4Example1">Name</label>
			</div>
			<button type="submit" class="btn btn-primary btn-block mb-4">Update Details</button>

		</form:form>

	</div>
</body>
</html>