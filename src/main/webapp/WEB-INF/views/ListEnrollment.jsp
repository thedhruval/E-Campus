<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Dashboard</title>
<!-- base:css -->
<link rel="stylesheet"
	href="vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
	<div class="container-scroller d-flex">

		<!-- partial:./partials/_sidebar.html -->
		<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:./partials/_navbar.html -->
			<jsp:include page="AdminHeader.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">

					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">List of all Enrollments</h4>
									<div class="table-responsive">
										<table
											class="table table-striped table-hover table-bordered align-middle">
											<thead class="table-dark">
												<tr>
													<th>Enrollment ID</th>
													<th>User ID</th>
													<th>Date</th>
													<th>Amount</th>
													<th>Transaction ID</th>
													<th>Remarks</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="enroll" items="${enrollmentList}">
													<tr>
														<td>${enroll.enrollmentId}</td>
														<td>${enroll.userId}</td>
														<td>${enroll.date}</td>
														<td>${enroll.amount}</td>
														<td>${enroll.transactionId}</td>
														<td>${enroll.remarks}</td>
														<td><a
															href="viewEnrollment?enrollmentId=${enroll.enrollmentId}"
															class="btn btn-info btn-sm">View</a> <a
															href="editEnrollment?enrollmentId=${enroll.enrollmentId}"
															class="btn btn-warning btn-sm">Edit</a> <a
															href="deleteEnrollment?enrollmentId=${enroll.enrollmentId}"
															class="btn btn-danger btn-sm"
															onclick="return confirm('Are you sure you want to delete this enrollment?');">
																Delete </a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>

									</div>
								</div><a href="admin-dashboard" class="btn btn-secondary">Cancel</a>
							</div>
						</div>
					</div>
					<!-- row end -->
					<!-- row end -->
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:./partials/_footer.html -->
				<jsp:include page="AdminFooter.jsp"></jsp:include>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<!-- base:js -->
	<script src="vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script src="vendors/chart.js/Chart.min.js"></script>
	<script src="js/jquery.cookie.js" type="text/javascript"></script>
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="js/off-canvas.js"></script>
	<script src="js/hoverable-collapse.js"></script>
	<script src="js/template.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<script src="js/jquery.cookie.js" type="text/javascript"></script>
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	<script src="js/dashboard.js"></script>
	<!-- End custom js for this page-->
</body>

</html>