<%@page import="com.bean.QuizBean"%>
<%@page import="java.util.ArrayList"%>
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
									<h4 class="card-title">Quiz</h4>
									<p class="card-description"></p>

									<%
									ArrayList<QuizBean> allQuiz = (ArrayList<QuizBean>) request.getAttribute("allQuiz");
									%>

									<div class="table-responsive">
										<table class="table table-striped table-hover">
											<thead>   
												<tr>
 													<th>Quiz Name</th>
													<th>Start Date</th>
													<th>End Date</th>
 													<th>Action</th>
												</tr>
											</thead>
											<tbody>

												<%
												for (QuizBean q : allQuiz) {
													out.print("<tr>");
 													out.print("<td>" + q.getTitle() + "</td>");
													out.print("<td>" + q.getStartDate() + "</td>");
													out.print("<td>" + q.getEndDate() + "</td>");

													out.print("<td>");
													out.print("<a href='UserQuizStartServlet?quizId=" + q.getQuizId() + "'>Start</a>");
													out.print("</td>");
													out.print("</tr>");

												}
												%>


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
							© 2023. Premium <a href="https://www.bootstrapdash.com/"
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

