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
    <title>Faculty Dashboard - Batch Sessions</title>
    <!-- base:css -->
    <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
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

    <!-- Sidebar -->
    <jsp:include page="FacultyLeftSidebar.jsp"></jsp:include>

    <div class="container-fluid page-body-wrapper">
        <!-- Header -->
        <jsp:include page="FacultyHeader.jsp"></jsp:include>

        <div class="main-panel">
            <div class="content-wrapper">

                <div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">List of Batch Sessions</h4>
                                <div class="table-responsive">
                                    <table id="batchSessionTable"
                                    class="table table-striped table-hover table-bordered align-middle">
                                        <thead class="table-dark">
                                            <tr>
                                                <th>Session Date</th>
                                                <th>Day</th>
                                                <th>Start Time</th>
                                                <th>End Time</th>
                                                <th>Duration (min)</th>
                                                <th>Topic</th>
                                                <th>Status</th>
                                                <th>Total Students</th>
                                                <th>Notes</th>
                                                <th>Batch Id</th>
                                                <th>Batch Name</th>
                                                <th>Faculty Id</th>
                                                <th>Faculty Name</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="session" items="${batchSessions}">
                                                <tr>
                                                    <td>${session.sessionDate}</td>
                                                    <td>${session.sessionDay}</td>
                                                    <td>${session.sessionStartTime}</td>
                                                    <td>${session.sessionEndTime}</td>
                                                    <td>${session.sessionDurationMinutes}</td>
                                                    <td>${session.topic}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${session.status == 'COMPLETED'}">
                                                                <span class="badge bg-success">COMPLETED</span>
                                                            </c:when>
                                                            <c:when test="${session.status == 'ONGOING'}">
                                                                <span class="badge bg-info">ONGOING</span>
                                                            </c:when>
                                                            <c:when test="${session.status == 'UPCOMMING'}">
                                                                <span class="badge bg-info">UPCOMMING</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="badge bg-danger">CANCELLED</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td>${session.totalStudent}</td>
                                                    <td>${session.notes}</td>
                                                    <td>${session.batchId}</td>
                                                    <td>${session.batch.batchName}</td>
                                                    <td>${session.facultyId}</td>
                                                    <td>${session.faculty.firstName} ${session.faculty.lastName}</td>
                                                    <td>
                                                    	<c:choose>
                                                    	<c:when test="${session.totalStudent == null}">Attendance not Taken yet</c:when>
                                                    	<c:otherwise>
                                                        <a href="viewAttendance?batchSessionId=${session.batchSessionId}" class="btn btn-info btn-sm">See Attendance</a>
                                                    	</c:otherwise>
                                                    	</c:choose>
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

            </div>
            <!-- content-wrapper ends -->

            <!-- Footer -->
            <jsp:include page="FacultyFooter.jsp"></jsp:include>
        </div>
    </div>
</div>
<!-- DataTables JS -->
<script
	src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#batchSessionTable').DataTable({
				"paging" : true, // enables pagination
				"pageLength" : 10, // rows per page
				"lengthChange" : false
			// hides "show X entries" dropdown (optional)
			});
		});
	</script>

</body>
</html>
