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
    <title>Admin Dashboard - Exam Results</title>
    <!-- base:css -->
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- inject:css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png" />
    <!-- DataTables CSS -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
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
                                <h4 class="card-title">List of Exam Results</h4>
                                <div class="table-responsive">
                                    <table id="examResultTable"
                                    class="table table-striped table-hover table-bordered align-middle">
                                        <thead class="table-dark">
                                            <tr>
                                                
                                                <th>Exam Date</th>
                                                <th>Exam Subject</th>
                                                <th>Course</th>
                                                <th>Batch</th>
                                                <th>Exam Title</th>
                                                <th>Exam Description</th>
                                                <th>Exam Total Marks</th>
                                                <th>Exam Difficulty</th>
                                                <th>Student</th>
                                                <th>Obtain Marks</th>
                                                <th>Percentage</th>
                                                <th>Result Status</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="result" items="${examResults}">
                                                <tr>
                                                    
                                                    <td>${result.exam.examDate}</td>
                                                    <td>${result.exam.subject.subjectName}</td>
                                                    <td>${result.exam.course.courseName}</td>
                                                    <td>${result.exam.batch.batchName}</td>
                                                    <td>${result.exam.examTitle}</td>
                                                    <td>${result.exam.examDescription}</td>
                                                    <td>${result.exam.totalMarks}</td>
                                                     <td>
                                                        <c:choose>
                                                            <c:when test="${result.exam.examDifficulty == 'EASY'}">
                                                                <span class="badge bg-success">EASY</span>
                                                            </c:when>
                                                            <c:when test="${result.exam.examDifficulty == 'VERY HARD'}">
                                                                <span class="badge bg-danger">VERY HARD</span>
                                                            </c:when>
                                                            <c:when test="${result.exam.examDifficulty == 'HARD'}">
                                                                <span class="badge bg-warning">HARD</span>
                                                            </c:when>
                                                            <c:when test="${result.exam.examDifficulty == 'MEDIUM'}">
                                                                <span class="badge bg-secondary">MEDIUM</span>
                                                            </c:when>
                                                        </c:choose>
                                                    </td>
                                                    <td>${result.student.firstName} ${result.student.lastName}</td>
                                                    <td>${result.obtainMarks}</td>
                                                    <td>${result.percentage}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${result.resultStatus == 'PASS'}">
                                                                <span class="badge bg-success">PASS</span>
                                                            </c:when>
                                                            <c:when test="${result.resultStatus == 'FAIL'}">
                                                                <span class="badge bg-danger">FAIL</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="badge bg-secondary">ABSENT</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td>
                                                    <a href="editExamResult?examResultId=${result.examResultId}" class="btn btn-warning btn-sm">Edit</a>
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
<!-- vendor scripts -->


<!-- DataTables JS -->
<script
	src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#examResultTable').DataTable({
				"paging" : true, // enables pagination
				"pageLength" : 10, // rows per page
				"lengthChange" : false
			// hides "show X entries" dropdown (optional)
			});
		});
	</script>



</body>
</html>
