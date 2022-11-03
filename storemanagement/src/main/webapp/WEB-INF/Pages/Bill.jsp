<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="LoginStyle/css/bill.css" />

<title>Billing</title>
<div class="container">
	<div class="row gutters">
		<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			<div class="card">
				<div class="card-body p-0">
					<div class="invoice-container">
						<div class="invoice-header">

							<!-- Row start -->
							<div class="row gutters">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
									<div class="custom-actions-btns mb-5">

										<b class="session" style="color: black">Welcome ${sess} </b>

										<button class="button button3">Save & Exit</button>
										&nbsp;&nbsp;
										<button class="button button1">Print</button>


									</div>
								</div>
							</div>
							<!-- Row end -->

							<!-- Row start -->
							<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
								<div class="invoice-details">
									<div class="invoice-num">
										<div>Bill No - #001</div>

										<div class=topright>
											<input type="date">
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Row end -->

						<!-- Row start -->
						<form action="">
							<div class="row gutters">
								<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
									<div class="invoice-details">
										<address>
											<b style="color: black">Customer Details</b>
											<hr class="style7">
											<br> <b style="color: black">Customer Name</b> <input
												class="input100" type="text" name="cname"
												placeholder="Enter Customer Name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<b style="color: black">Mobile</b> <input class="input100"
												type="text" name="mobile" placeholder="Enter Mobile No">
										</address>
									</div>
								</div>
								<div class="row gutters">
									<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
										<div class="invoice-details">

											<address>
												<b style="color: black">Sales Dashboard</b> <br>
												<hr class="style7">

												<b style="color: black">Products</b> <select name="" id="">
													<value:forEach var="product" items="${productdetails}">
														<option>${product.getProduct_name()}</option>
													</value:forEach>
													
												</select>&nbsp; &nbsp; &nbsp; <b style="color: black">Quantity</b> <input
													class="input100" type="number" name="qty"
													placeholder="Choose Quantity"> &nbsp; &nbsp;
												<button class="button button2">Add Item</button>


											</address>
										</div>
									</div>



									<!-- Row end -->

								</div>

								<div class="invoice-body">

									<!-- Row start -->
									<div class="row gutters">
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="table-responsive">
												<table border="1"
													class="table table-striped table-responsive-md">
													<thead>
														<tr>
															<th scope="col">Id</th>
															<th scope="col">Product Name</th>
															<th scope="col">Quantity</th>
															<th scope="col">Cost Per Unit</th>
															<th scope="col">Total</th>

														</tr>
													</thead>
													<tr>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>


													</tr>


												</table>
											</div>
										</div>
									</div>
						</form>
						<h3 class="text-success">
							<strong>Grand Total:</strong>
						</h3>

						<!-- Row end -->

					</div>

					<div class="invoice-footer">
						<p>Thank you Visit Again!!! &#128525</p>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
</div>