<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>QuizApp Admin</title>
<!-- plugins:css -->
<link rel="stylesheet" href="assets/vendors/feather/feather.css">
<link rel="stylesheet"
	href="assets/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="assets/vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="assets/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="assets/images/favicon.png">
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<jsp:include page="UserHeader.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="UserSidebar.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Striped Table</h4>
									<p class="card-description">
										Add class
										<code>.table-striped</code>
									</p>
									<div class="table-responsive">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>User</th>
													<th>First name</th>
													<th>Progress</th>
													<th>Amount</th>
													<th>Deadline</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="py-1"><img
														src="assets/images/faces/face1.jpg" alt="image"></td>
													<td>Herman Beck</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-success" role="progressbar"
																style="width: 25%" aria-valuenow="25" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 77.99</td>
													<td>May 15, 2015</td>
												</tr>
												<tr>
													<td class="py-1"><img
														src="assets/images/faces/face2.jpg" alt="image"></td>
													<td>Messsy Adam</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 75%" aria-valuenow="75" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$245.30</td>
													<td>July 1, 2015</td>
												</tr>
												<tr>
													<td class="py-1"><img
														src="assets/images/faces/face3.jpg" alt="image"></td>
													<td>John Richards</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-warning" role="progressbar"
																style="width: 90%" aria-valuenow="90" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$138.00</td>
													<td>Apr 12, 2015</td>
												</tr>
												<tr>
													<td class="py-1"><img
														src="assets/images/faces/face4.jpg" alt="image"></td>
													<td>Peter Meggik</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-primary" role="progressbar"
																style="width: 50%" aria-valuenow="50" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 77.99</td>
													<td>May 15, 2015</td>
												</tr>
												<tr>
													<td class="py-1"><img
														src="assets/images/faces/face5.jpg" alt="image"></td>
													<td>Edward</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: 35%" aria-valuenow="35" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 160.25</td>
													<td>May 03, 2015</td>
												</tr>
												<tr>
													<td class="py-1"><img
														src="assets/images/faces/face6.jpg" alt="image"></td>
													<td>John Doe</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-info" role="progressbar"
																style="width: 65%" aria-valuenow="65" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 123.21</td>
													<td>April 05, 2015</td>
												</tr>
												<tr>
													<td class="py-1"><img
														src="assets/images/faces/face7.jpg" alt="image"></td>
													<td>Henry Tom</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-warning" role="progressbar"
																style="width: 20%" aria-valuenow="20" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</td>
													<td>$ 150.00</td>
													<td>June 16, 2015</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>



					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">
						<span
							class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright
							� 2023. Premium <a href="https://www.bootstrapdash.com/"
							target="_blank">Bootstrap admin template</a> from BootstrapDash.
							All rights reserved.
						</span> <span
							class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted
							&amp; made with <i class="ti-heart text-danger ms-1"></i>
						</span>
					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="assets/js/off-canvas.js"></script>
	<script src="assets/js/template.js"></script>
	<script src="assets/js/settings.js"></script>
	<script src="assets/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->

</body>
</html>

