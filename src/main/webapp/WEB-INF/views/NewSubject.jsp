<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Dashboard - Add Subject</title>
<!-- base:css -->
<link rel="stylesheet"
	href="vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
<!-- inject:css -->
<link rel="stylesheet" href="css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
	<div class="container-scroller d-flex">

		<!-- Sidebar -->
		<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

		<div class="container-fluid page-body-wrapper">
			<!-- Header -->
			<jsp:include page="AdminHeader.jsp"></jsp:include>

			<div class="main-panel">
				<div class="content-wrapper">

					<div class="row">
						<div class="col-lg-8 grid-margin stretch-card mx-auto">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Add New Subject</h4>

									<form action="saveSubject" method="post" class="forms-sample">

										<!-- Subject Name -->
										<div class="form-group">
											<label for="subjectName">Subject Name</label> <input
												type="text" class="form-control" id="subjectName"
												name="subjectName" required>
										</div>

										<!-- Semester -->
										<div class="form-group">
											<label for="semester">Semester</label> <input type="number"
												class="form-control" id="semester" name="semester" min="1"
												required>
										</div>
										
										<!-- Course -->
										<div class="form-group">
											<label for="courseId">Course</label> <select
												class="form-control" id="courseId" name="courseId" required>
												<option value="">-- Select Course --</option>
												<c:forEach var="course" items="${courseList}">
													<option value="${course.courseId}">${course.courseName}</option>
												</c:forEach>
											</select>
										</div>


										<!-- Buttons -->
										<button type="submit" class="btn btn-primary me-2">Save</button>
										<a href="admin-dashboard" class="btn btn-secondary">Cancel</a>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- content-wrapper ends -->

				<!-- Footer -->
				<jsp:include page="AdminFooter.jsp"></jsp:include>
			</div>
		</div>
	</div>

	
</body>
</html>
