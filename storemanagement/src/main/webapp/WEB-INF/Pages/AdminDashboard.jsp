<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="/css/sellstyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	charset="utf-8"></script>
</head>
<body>
	<!--wrapper start-->
	<div class="wrapper">
		<!--header menu start-->
		<div class="header">
			<div class="header-menu">
				<div class="title">
					Store <span>Management</span>
				</div>
				<ul>
				<b style="color: white">Welcome ${sess}</b> 
					<li><a href="/logout"><i class="fas fa-power-off"></i></a></li>
				</ul>
			</div>
		</div>
		<!--header menu end-->
		<!--sidebar start-->
		<div class="sidebar">
			<div class="sidebar-menu">
				<center class="profile">
					<br>
				</center>
				
				<li class="item"><a href="/AdminHomepage" class="menu-btn"> <i
						class="fas fa-desktop"></i><span>Home</span>
				</a></li>
				<li class="item"><a href="/employee" class="menu-btn"> <i
						class="fa fa-building"></i><span>Add Employee</span>
				</a></li>
				<li class="item"><a href="/adduser" class="menu-btn"> <i
						class="fa fa-building"></i><span>User Access</span>
				</a></li>
					
			</div>
		</div>
	</div>
	<!--wrapper end-->

	<script type="text/javascript">
		$(document).ready(function() {
			$(".sidebar-btn").click(function() {
				$(".wrapper").toggleClass("collapse");
			});
		});
	</script>

</body>
</html>