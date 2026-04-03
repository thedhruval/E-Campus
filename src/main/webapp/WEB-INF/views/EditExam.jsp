<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Edit Exam</title>
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
<div class="container-scroller d-flex">

    <jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

    <div class="container-fluid page-body-wrapper">
        <jsp:include page="AdminHeader.jsp"></jsp:include>

        <div class="main-panel">
            <div class="content-wrapper">

                <div class="row">
                    <div class="col-lg-8 grid-margin stretch-card mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Edit Exam</h4>

                                <form action="updateExam" method="post" class="forms-sample">

                                    <!-- Exam Title -->
                                    <div class="form-group">
                                        <label for="examTitle">Exam Title</label>
                                        <input type="text" class="form-control" id="examTitle" 
                                               name="examTitle" value="${exam.examTitle}" required>
                                    </div>

                                    <!-- Exam Description -->
                                    <div class="form-group">
                                        <label for="examDescription">Exam Description</label>
                                        <textarea class="form-control" id="examDescription" 
                                                  name="examDescription" rows="3">${exam.examDescription}</textarea>
                                    </div>

                                    <!-- Exam Date -->
                                    <div class="form-group">
                                        <label for="examDate">Exam Date</label>
                                        <input type="date" class="form-control" id="examDate" 
                                               name="examDate" value="${exam.examDate}" required>
                                    </div>

                                    <!-- Exam Difficulty -->
                                    <div class="form-group">
                                        <label for="examDifficulty">Exam Difficulty</label>
                                        <select class="form-control" id="examDifficulty" name="examDifficulty" required>
                                            <option value="EASY" ${exam.examDifficulty == 'EASY' ? 'selected' : ''}>EASY</option>
                                            <option value="MEDIUM" ${exam.examDifficulty == 'MEDIUM' ? 'selected' : ''}>MEDIUM</option>
                                            <option value="HARD" ${exam.examDifficulty == 'HARD' ? 'selected' : ''}>HARD</option>
                                            <option value="VERY_HARD" ${exam.examDifficulty == 'VERY_HARD' ? 'selected' : ''}>VERY HARD</option>
                                        </select>
                                    </div>

                                    <!-- Total Marks -->
                                    <div class="form-group">
                                        <label for="totalMarks">Total Marks</label>
                                        <input type="number" step="0.01" class="form-control" id="totalMarks" 
                                               name="totalMarks" value="${exam.totalMarks}" required>
                                    </div>

                                    <!-- Batch -->
                                    <div class="form-group">
                                        <label for="batchId">Batch</label>
                                        <select class="form-control" id="batchId" name="batchId" required>
                                            <c:forEach var="batch" items="${batchList}">
                                                <option value="${batch.batchId}" ${exam.batchId == batch.batchId ? 'selected' : ''}>${batch.batchName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Subject -->
                                    <div class="form-group">
                                        <label for="subjectId">Subject</label>
                                        <select class="form-control" id="subjectId" name="subjectId" required>
                                            <c:forEach var="subject" items="${subjectList}">
                                                <option value="${subject.subjectId}" ${exam.subjectId == subject.subjectId ? 'selected' : ''}>${subject.subjectName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Course -->
                                    <div class="form-group">
                                        <label for="courseId">Course</label>
                                        <select class="form-control" id="courseId" name="courseId" required>
                                            <c:forEach var="course" items="${courseList}">
                                                <option value="${course.courseId}" ${exam.courseId == course.courseId ? 'selected' : ''}>${course.courseName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Hidden Exam ID -->
                                    <input type="hidden" name="examId" value="${exam.examId}">

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Update Exam</button>
                                    <a href="listExam" class="btn btn-secondary">Cancel</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <jsp:include page="AdminFooter.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>
</html>
