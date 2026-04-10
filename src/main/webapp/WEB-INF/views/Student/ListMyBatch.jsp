<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Batches</title>
    <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
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
                <h3 class="mb-4">My Batches</h3>

                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Batch Name</th>
                        <th>Course</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="batch" items="${myBatches}">
                        <tr>
                            <td>${batch.batchName}</td>
                            <td>${batch.course.courseName}</td>
                            <td>${batch.batchStatus}</td>
                            <td>
                                <!-- Attendance -->
                                <a href="viewAttendance?batchId=${batch.batchId}" class="btn btn-sm btn-info">Attendance</a>
                                <!-- Upcoming Sessions -->
                                <a href="viewSessions?batchId=${batch.batchId}" class="btn btn-sm btn-primary">View Sessions</a>
                                <!-- Exams Done -->
                                <a href="viewExams?batchId=${batch.batchId}" class="btn btn-sm btn-success">View Exams</a>
                                </td>
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
