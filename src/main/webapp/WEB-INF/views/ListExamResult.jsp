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
                                    <table class="table table-striped table-hover table-bordered align-middle">
                                        <thead class="table-dark">
                                            <tr>
                                                <th>Exam</th>
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
                                                    <td>${result.examId}</td>
                                                    <td>${result.studentId}</td>
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
                                                        <a href="deleteExamResult?examResultId=${result.examResultId}" class="btn btn-danger btn-sm"
                                                           onclick="return confirm('Are you sure you want to delete this exam result?');">Delete</a>
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
