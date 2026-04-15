<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Faculty Dashboard</title>
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
<!-- DataTables CSS -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
</head>
<body>
	<div class="container-scroller d-flex">

		<!-- partial:./partials/_sidebar.html -->
		<jsp:include page="FacultyLeftSidebar.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:./partials/_navbar.html -->
			<jsp:include page="FacultyHeader.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">

					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">List of all Users</h4>
									<div class="table-responsive">
										<table id="listStudentTable"
											class="table table-striped table-hover table-bordered align-middle">
											<thead class="table-dark">
												<tr>
													<th>First Name</th>
													<th>Last Name</th>
													<th>Email</th>
													<th>Created At</th>
													<th>Role</th>
													<th>Gender</th>
													<th>Birth Year</th>
													<th>Contact Number</th>
													<th>Profile Picture</th>
													<th>Active</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="user" items="${students}">
													<tr>
														<td>${user.firstName}</td>
														<td>${user.lastName}</td>
														<td>${user.email}</td>
														<td>${user.createdAt}</td>
														<td>${user.role}</td>
														<td>${user.gender}</td>
														<td>${user.birthYear}</td>
														<td>${user.contactNum}</td>
														<td><img src="${user.profilePicURL}"
															alt="Profile Pic" class="img-thumbnail"
															style="width: 60px; height: 60px;"></td>
														<td><c:choose>
																<c:when test="${user.active}">
																	<span class="badge bg-success">Active</span>
																</c:when>
																<c:otherwise>
																	<span class="badge bg-danger">Inactive</span>
																</c:otherwise>
															</c:choose></td>
														<td><a href="viewUser?userId=${user.userId}"
															class="btn btn-info btn-sm">View</a>
															</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<a href="faculty-dashboard" class="btn btn-secondary">Cancel</a>
							</div>
						</div>
					</div>
					<!-- row end -->
					<!-- row end -->
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:./partials/_footer.html -->
				<jsp:include page="FacultyFooter.jsp"></jsp:include>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
<!-- DataTables JS -->
<script
	src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#listStudentTable').DataTable({
				"paging" : true, // enables pagination
				"pageLength" : 10, // rows per page
				"lengthChange" : false
			// hides "show X entries" dropdown (optional)
			});
		});
	</script>
	
</body>

</html>