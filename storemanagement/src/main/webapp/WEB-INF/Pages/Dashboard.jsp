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
				<b style="color: white">Welcome ${sess}</b> &#128525
					<li><a href="#"><i class="fas fa-search"></i></a></li>
					<li><a href="#"><i class="fas fa-bell"></i></a></li>
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
				
				<li class="item"><a href="/HomePage" class="menu-btn"> <i
						class="fas fa-desktop"></i><span>Dashboard</span>
				</a></li>
				<li class="item"><a href="/ViewCompanyDetails" class="menu-btn"> <i
						class="fa fa-building"></i><span>Company</span>
				</a></li>
				<li class="item"><a href="/ViewSupplierDetails" class="menu-btn"> <i
						class="fa fa-shopping-basket"></i><span>Suplier</span>
				</a></li>
				<li class="item" id=""><a href="/ViewCategoryDetails"
					class="menu-btn"> <i class="fa fa-list-alt"></i><span>Category
					</span>
				</a>
					<li class="item"><a href="/ViewProductDetails" class="menu-btn"> <i
						class="fab fa-product-hunt" ></i><span>Products</span>
				</a></li>
				
					<li class="item"><a href="/bill" class="menu-btn"> <i
						class="	fas fa-hand-holding-usd" ></i><span>Billing</span>
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