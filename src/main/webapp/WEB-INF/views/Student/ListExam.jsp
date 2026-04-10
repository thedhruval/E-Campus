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
    <title>Student Dashboard - Exams</title>
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
    <jsp:include page="StudentLeftSidebar.jsp"></jsp:include>

    <div class="container-fluid page-body-wrapper">
        <!-- Header -->
        <jsp:include page="StudentHeader.jsp"></jsp:include>

        <div class="main-panel">
            <div class="content-wrapper">

                <div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">List of Exams</h4>
                                <div class="table-responsive">
                                    <table id="examTable"
                                    class="table table-striped table-hover table-bordered align-middle">
                                        <thead class="table-dark">
                                            <tr>
                                                <th>Exam Title</th>
                                                <th>Description</th>
                                                <th>Exam Date</th>
                                                <th>Created At</th>
                                                <th>Difficulty</th>
                                                <th>Total Marks</th>
                                                <th>Batch</th>
                                                <th>Subject</th>
                                                <th>Course</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="exam" items="${exams}">
                                                <tr>
                                                    <td>${exam.examTitle}</td>
                                                    <td>${exam.examDescription}</td>
                                                    <td>${exam.examDate}</td>
                                                    <td>${exam.createdAt}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${exam.examDifficulty == 'EASY'}">
                                                                <span class="badge bg-success">EASY</span>
                                                            </c:when>
                                                            <c:when test="${exam.examDifficulty == 'MEDIUM'}">
                                                                <span class="badge bg-info">MEDIUM</span>
                                                            </c:when>
                                                            <c:when test="${exam.examDifficulty == 'HARD'}">
                                                                <span class="badge bg-warning">HARD</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="badge bg-danger">VERY HARD</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td>${exam.totalMarks}</td>
                                                    <td>${exam.batch.batchName}</td>
                                                    <td>${exam.subject.subjectName}</td>
                                                    <td>${exam.course.courseName}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <a href="listMyBatch" class="btn btn-secondary">Cancel</a>
                        </div>
                    </div>
                </div>

            </div>
            <!-- content-wrapper ends -->

            <!-- Footer -->
            <jsp:include page="StudentFooter.jsp"></jsp:include>
        </div>
    </div>
</div>
<!-- DataTables JS -->
<script
	src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#examTable').DataTable({
				"paging" : true, // enables pagination
				"pageLength" : 10, // rows per page
				"lengthChange" : false
			// hides "show X entries" dropdown (optional)
			});
		});
	</script>

</body>
</html>
