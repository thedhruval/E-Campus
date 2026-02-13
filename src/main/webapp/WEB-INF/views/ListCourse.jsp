<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
									<h4 class="card-title">List of all Courses</h4>
									<div class="table-responsive">
										<table
											class="table table-striped table-hover table-bordered align-middle">
											<thead class="table-dark">
												<tr>
													<th>Course Name</th>
													<th>Active</th>
													<th>Total Seats</th>
													<th>Academic Cycle</th>
													<th>Paid Seats</th>
													<th>Development Cost</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="course" items="${courseList}">
													<tr>
														<td>${course.courseName}</td>
														<td><c:choose>
																<c:when test="${course.active}">
																	<span class="badge bg-success">Active</span>
																</c:when>
																<c:otherwise>
																	<span class="badge bg-danger">Inactive</span>
																</c:otherwise>
															</c:choose></td>
														<td>${course.totalSeats}</td>
														<td>${course.academicCycle}</td>
														<td>${course.paidSeats}</td>
														<td>${course.developmentCost}</td>
														<td><a href="viewCourse?courseId=${course.courseId}"
															class="btn btn-info btn-sm">View</a> <a
															href="editCourse?courseId=${course.courseId}"
															class="btn btn-warning btn-sm">Edit</a> <a
															href="deleteCourse?courseId=${course.courseId}"
															class="btn btn-danger btn-sm"
															onclick="return confirm('Are you sure you want to delete this course?');">
																Delete </a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<a href="admin-dashboard" class="btn btn-secondary">Cancel</a>
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