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
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="AdminSidebar.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">


						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Add Quiz</h4>
									<p class="card-description">Fill Quiz Information</p>


									<form class="pt-3" method="post" action="SaveQuizServlet">
										<div class="form-group">
											<input type="text" class="form-control form-control-lg"
												id="exampleInputUsername1" placeholder="Title" name="title">
										</div>


										<div class="form-group">
											<input type="text" class="form-control form-control-lg"
												id="exampleInputUsername1" placeholder="TotalQuestion"
												name="totalQuestion">
										</div>

										<div class="form-group">
											<input type="text" class="form-control form-control-lg"
												id="exampleInputUsername1" placeholder="Point Per Question"
												name="perQuestionPoint">
										</div>




										<div>
											IsNegative : <input type="checkbox" name="negative"
												value="true">
										</div>

										<div class="form-group">
											<input type="text" class="form-control form-control-lg"
												id="exampleInputUsername1" placeholder="MinusPoint"
												name="minusPoint">
										</div>


										<div class="form-group">
											<input type="date" class="form-control form-control-lg"
												id="exampleInputUsername1" placeholder="StartDate"
												name="startDate">
										</div>


										<div class="form-group">
											<input type="date" class="form-control form-control-lg"
												id="exampleInputUsername1" placeholder="EndDate"
												name="endDate">
										</div>

										<div>
											Active : <input type="checkbox" id="exampleInputUsername1"
												placeholder="Active" name="active" value="true"
												checked="checked">
										</div>








										<div class="mt-3 d-grid gap-2">
											<button type="submit"
												class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">ADD
												QUIZ</button>
										</div>

									</form>

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

