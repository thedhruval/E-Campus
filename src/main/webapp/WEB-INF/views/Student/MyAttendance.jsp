<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My Attendance</title>
<link rel="stylesheet"
	href="../vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
	<div class="container-scroller d-flex">
		<!-- Sidebar -->
		<jsp:include page="StudentLeftSidebar.jsp"></jsp:include>

		<div class="container-fluid page-body-wrapper">
			<!-- Header -->
			<jsp:include page="StudentHeader.jsp"></jsp:include>

			<!-- Content -->
			<div class="main-panel">
				<div class="content-wrapper">
					<h3 class="mb-4">My Attendance</h3>

					<table class="table table-striped">
						<thead>
							<tr>
								<th>Session Date</th>
								<th>Topic</th>
								<th>Status</th>
								<th>Notes</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="attendance" items="${attendanceList}">
								<tr>
									<td>${attendance.batchSession.sessionDate}</td>
									<td>${attendance.batchSession.topic}</td>
									<td>${attendance.status}</td>
									<td>${attendance.notes}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<a href="listMyBatch" class="btn btn-secondary">Cancel</a>
				</div>

				<!-- Footer -->
				<jsp:include page="StudentFooter.jsp"></jsp:include>
			</div>
			
		</div>
	</div>
</body>
</html>
