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
    <title>Admin Dashboard - Batch Sessions</title>
    <!-- base:css -->
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
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
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">List of Batch Sessions</h4>
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover table-bordered align-middle">
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
                                                <th>Present Offline</th>
                                                <th>Present Online</th>
                                                <th>Absent</th>
                                                <th>Late</th>
                                                <th>Excuse</th>
                                                <th>Cancel</th>
                                                <th>N/A</th>
                                                <th>Notes</th>
                                                <th>Batch</th>
                                                <th>Faculty</th>
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
                                                    <td>${session.presentOffline}</td>
                                                    <td>${session.presentOnline}</td>
                                                    <td>${session.absent}</td>
                                                    <td>${session.late}</td>
                                                    <td>${session.excuse}</td>
                                                    <td>${session.cancel}</td>
                                                    <td>${session.na}</td>
                                                    <td>${session.notes}</td>
                                                    <td>${session.batchId}</td>
                                                    <td>${session.facultyId}</td>
                                                    <td>
                                                        <a href="viewBatchSession?batchSessionId=${session.batchSessionId}" class="btn btn-info btn-sm">View</a>
                                                        <a href="editBatchSession?batchSessionId=${session.batchSessionId}" class="btn btn-warning btn-sm">Edit</a>
                                                        <a href="deleteBatchSession?batchSessionId=${session.batchSessionId}" class="btn btn-danger btn-sm"
                                                           onclick="return confirm('Are you sure you want to delete this batch session?');">Delete</a>
                                                    </td>
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

            </div>
            <!-- content-wrapper ends -->

            <!-- Footer -->
            <jsp:include page="AdminFooter.jsp"></jsp:include>
        </div>
    </div>
</div>


</body>
</html>
