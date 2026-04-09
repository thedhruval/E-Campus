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
    <title>Faculty Dashboard - New Exam</title>
    <!-- base:css -->
    <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
    <!-- inject:css -->
    <link rel="stylesheet" href="../css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../images/favicon.png" />
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
                    <div class="col-lg-8 grid-margin stretch-card mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Create New Exam</h4>

                                <form action="saveExam" method="post" class="forms-sample">

                                    <!-- Exam Title -->
                                    <div class="form-group">
                                        <label for="examTitle">Exam Title</label>
                                        <input type="text" class="form-control" id="examTitle" name="examTitle" required>
                                    </div>

                                    <!-- Exam Description -->
                                    <div class="form-group">
                                        <label for="examDescription">Exam Description</label>
                                        <textarea class="form-control" id="examDescription" name="examDescription" rows="3"></textarea>
                                    </div>

                                    <!-- Exam Date -->
                                    <div class="form-group">
                                        <label for="examDate">Exam Date</label>
                                        <input type="date" class="form-control" id="examDate" name="examDate" required>
                                    </div>

                                    <!-- Created At -->
                                    <div class="form-group">
                                        <label for="createdAt">Created At</label>
                                        <input type="datetime-local" class="form-control" id="createdAt" name="createdAt" required>
                                    </div>

                                    <!-- Exam Difficulty -->
                                    <div class="form-group">
                                        <label for="examDifficulty">Exam Difficulty</label>
                                        <select class="form-control" id="examDifficulty" name="examDifficulty" required>
                                            <option value="">-- Select Difficulty --</option>
                                            <option value="EASY">EASY</option>
                                            <option value="MEDIUM">MEDIUM</option>
                                            <option value="HARD">HARD</option>
                                            <option value="VERY_HARD">VERY_HARD</option>
                                        </select>
                                    </div>

                                    <!-- Total Marks -->
                                    <div class="form-group">
                                        <label for="totalMarks">Total Marks</label>
                                        <input type="number" step="0.01" class="form-control" id="totalMarks" name="totalMarks" required>
                                    </div>

                                    <!-- Batch -->
                                    <div class="form-group">
                                        <label for="batchId">Batch</label>
                                        <select class="form-control" id="batchId" name="batchId" required>
                                            <option value="">-- Select Batch --</option>
                                            <c:forEach var="batch" items="${batchList}">
                                                <option value="${batch.batchId}">${batch.batchName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Subject -->
                                    <div class="form-group">
                                        <label for="subjectId">Subject</label>
                                        <select class="form-control" id="subjectId" name="subjectId" required>
                                            <option value="">-- Select Subject --</option>
                                            <c:forEach var="subject" items="${subjectList}">
                                                <option value="${subject.subjectId}">${subject.subjectName}</option>
                                            </c:forEach>
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

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Save</button>
                                    <a href="faculty-dashboard" class="btn btn-secondary">Cancel</a>
                                </form>
                            </div>
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


</body>
</html>
