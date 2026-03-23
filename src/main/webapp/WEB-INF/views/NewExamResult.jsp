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
    <title>Admin Dashboard - New Exam Result</title>
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
                    <div class="col-lg-8 grid-margin stretch-card mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Create New Exam Result</h4>

                                <form action="saveExamResult" method="post" class="forms-sample">

                                    <!-- Exam -->
                                    <div class="form-group">
                                        <label for="examId">Exam</label>
                                        <select class="form-control" id="examId" name="examId" required>
                                            <option value="">-- Select Exam --</option>
                                            <c:forEach var="exam" items="${examList}">
                                                <option value="${exam.examId}">${exam.examName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Student -->
                                    <div class="form-group">
                                        <label for="studentId">Student</label>
                                        <select class="form-control" id="studentId" name="studentId" required>
                                            <option value="">-- Select Student --</option>
                                            <c:forEach var="student" items="${studentList}">
                                                <option value="${student.userId}">${student.firstName} ${student.lastName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Obtain Marks -->
                                    <div class="form-group">
                                        <label for="obtainMarks">Obtain Marks</label>
                                        <input type="number" step="0.01" class="form-control" id="obtainMarks" name="obtainMarks" required>
                                    </div>

                                    <!-- Percentage -->
                                    <div class="form-group">
                                        <label for="percentage">Percentage</label>
                                        <input type="number" step="0.01" class="form-control" id="percentage" name="percentage" required>
                                    </div>

                                    <!-- Result Status -->
                                    <div class="form-group">
                                        <label for="resultStatus">Result Status</label>
                                        <select class="form-control" id="resultStatus" name="resultStatus" required>
                                            <option value="">-- Select Status --</option>
                                            <option value="ABSENT">ABSENT</option>
                                            <option value="FAIL">FAIL</option>
                                            <option value="PASS">PASS</option>
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

<!-- base:js -->
<script src="vendors/js/vendor.bundle.base.js"></script>
<!-- inject:js -->
<script src="js/off-canvas.js"></script>
<script src="js/hoverable-collapse.js"></script>
<script src="js/template.js"></script>
<!-- Custom js -->
<script src="js/dashboard.js"></script>
</body>
</html>
