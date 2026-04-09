<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Upcoming Sessions</title>
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
					<h3 class="mb-4">Upcoming Sessions</h3>

					<table class="table table-striped">
						<thead>
							<tr>
								<th>Session Date</th>
								<th>Day</th>
								<th>Topic</th>
								<th>Start Time</th>
								<th>End Time</th>
								<th>Duration (min)</th>
								<th>Batch Name</th>
								<th>Faculty Name</th>
								<th>Notes</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="session" items="${upcomingSessions}">
								<tr>
									<td>${session.sessionDate}</td>
									<td>${session.sessionDay}</td>
									<td>${session.topic}</td>
									<td>${session.sessionStartTime}</td>
									<td>${session.sessionEndTime}</td>
									<td>${session.sessionDurationMinutes}</td>
									<td>${session.batch.batchName}</td>
									<td>${session.faculty.firstName} ${session.faculty.lastName}</td>
									<td>${session.notes}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<!-- Footer -->
				<jsp:include page="StudentFooter.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>
