<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Student Dashboard</title>
<!-- base:css -->
<link rel="stylesheet"
	href="../vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="../css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="../images/favicon.png" />
</head>
<body>
	<div class="container-scroller d-flex">

		<!-- partial:./partials/_sidebar.html -->
		<jsp:include page="StudentLeftSidebar.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:./partials/_navbar.html -->
			<jsp:include page="StudentHeader.jsp"></jsp:include>
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
													<th>Fees to be paid</th>
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
														<td>${course.amountPerStudent}</td>
														<td>
														<a
															href="listSubjectForCourse?courseId=${course.courseId}"
															class="btn btn-info btn-sm">View Subjects</a>
														<c:choose>
														<c:when test="${course.active}">
																	<a href="/charge?courseId=${course.courseId}"
															class="btn btn-primary btn-sm">Pay and Enroll</a>
																</c:when>
																<c:otherwise>
																	<span class="badge bg-danger">Course Inactive</span>
																</c:otherwise>
														
															</c:choose></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<a href="student-dashboard" class="btn btn-secondary">Cancel</a>
							</div>
						</div>
					</div>
					<!-- row end -->
					<!-- row end -->
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:./partials/_footer.html -->
				<jsp:include page="StudentFooter.jsp"></jsp:include>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	
</body>

</html>