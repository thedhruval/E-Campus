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
    <title>Admin Dashboard - New Batch</title>
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
                                <h4 class="card-title">Create New Batch</h4>

                                <form action="saveBatch" method="post" class="forms-sample">

                                    <!-- Batch Name -->
                                    <div class="form-group">
                                        <label for="batchName">Batch Name</label>
                                        <input type="text" class="form-control" id="batchName" name="batchName" required>
                                    </div>

                                    <!-- Batch Status -->
                                    <div class="form-group">
                                        <label for="batchStatus">Batch Status</label>
                                        <select class="form-control" id="batchStatus" name="batchStatus" required>
                                            <option value="">-- Select Status --</option>
                                            <option value="COMPLETED">COMPLETED</option>
                                            <option value="HOLD">HOLD</option>
                                            <option value="NOT_STARTED">NOT_STARTED</option>
                                            <option value="ON_GOING">ON_GOING</option>
                                        </select>
                                    </div>

                                    <!-- Batch Type -->
                                    <div class="form-group">
                                        <label for="batchType">Batch Type</label>
                                        <select class="form-control" id="batchType" name="batchType" required>
                                            <option value="">-- Select Type --</option>
                                            <option value="CLUB">CLUB</option>
                                            <option value="COMPLIMENTARY">COMPLIMENTARY</option>
                                            <option value="GEN">GEN</option>
                                            <option value="GEN200">GEN200</option>
                                            <option value="GEN40">GEN40</option>
                                            <option value="ONE_TO_ONE">ONE_TO_ONE</option>
                                        </select>
                                    </div>

                                    <!-- Description -->
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <input type="text" class="form-control" id="description" name="description">
                                    </div>

                                    <!-- Start Date -->
                                    <div class="form-group">
                                        <label for="startDate">Start Date</label>
                                        <input type="date" class="form-control" id="startDate" name="startDate" required>
                                    </div>

                                    <!-- End Date -->
                                    <div class="form-group">
                                        <label for="endDate">End Date</label>
                                        <input type="date" class="form-control" id="endDate" name="endDate" required>
                                    </div>

                                    <!-- Faculty -->
                                    <div class="form-group">
                                        <label for="facultyId">Faculty</label>
                                        <select class="form-control" id="facultyId" name="facultyId" required>
                                            <option value="">-- Select Faculty --</option>
                                            <c:forEach var="faculty" items="${facultyList}">
                                                <option value="${faculty.facultyId}">${faculty.facultyName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Reporter -->
                                    <div class="form-group">
                                        <label for="reporterId">Reporter</label>
                                        <select class="form-control" id="reporterId" name="reporterId">
                                            <option value="">-- Select Reporter --</option>
                                            <c:forEach var="reporter" items="${reporterList}">
                                                <option value="${reporter.reporterId}">${reporter.reporterName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Status -->
                                    <div class="form-group">
                                        <label for="status">Status</label>
                                        <select class="form-control" id="status" name="status" required>
                                            <option value="">-- Select Status --</option>
                                            <option value="COMPLETED">COMPLETED</option>
                                            <option value="HOLD">HOLD</option>
                                            <option value="NOT_STARTED">NOT_STARTED</option>
                                            <option value="ON_GOING">ON_GOING</option>
                                        </select>
                                    </div>

                                    <!-- Course -->
                                    <div class="form-group">
                                        <label for="courseId">Course</label>
                                        <select class="form-control" id="courseId" name="courseId" required>
                                            <option value="">-- Select Course --</option>
                                            <c:forEach var="course" items="${courseList}">
                                                <option value="${course.courseId}">${course.courseName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Subject -->
                                    <div class="form-group">
                                        <label for="subjectId">Subject</label>
                                        <select class="form-control" id="subjectId" name="subjectId">
                                            <option value="">-- Select Subject --</option>
                                            <c:forEach var="subject" items="${subjectList}">
                                                <option value="${subject.subjectId}">${subject.subjectName}</option>
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
