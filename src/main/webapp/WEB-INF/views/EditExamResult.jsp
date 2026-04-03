<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Edit Exam Result</title>
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
                                <h4 class="card-title">Edit Exam Result</h4>

                                <form action="updateExamResult" method="post" class="forms-sample">

                                    <!-- Exam -->
                                    <div class="form-group">
                                        <label for="examId">Exam</label>
                                        <select class="form-control" id="examId" name="examId" required>
                                            <c:forEach var="exam" items="${examList}">
                                                <option value="${exam.examId}" ${examResult.examId == exam.examId ? 'selected' : ''}>
                                                    ${exam.examTitle}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Student -->
                                    <div class="form-group">
                                        <label for="studentId">Student</label>
                                        <select class="form-control" id="studentId" name="studentId" required>
                                            <c:forEach var="student" items="${studentList}">
                                                <option value="${student.userId}" ${examResult.studentId == student.userId ? 'selected' : ''}>
                                                    ${student.firstName} ${student.lastName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Obtain Marks -->
                                    <div class="form-group">
                                        <label for="obtainMarks">Obtain Marks</label>
                                        <input type="number" step="0.01" class="form-control" id="obtainMarks" 
                                               name="obtainMarks" value="${examResult.obtainMarks}" required>
                                    </div>

                                    <!-- Percentage -->
                                    <div class="form-group">
                                        <label for="percentage">Percentage</label>
                                        <input type="number" step="0.01" class="form-control" id="percentage" 
                                               name="percentage" value="${examResult.percentage}" required>
                                    </div>

                                    <!-- Result Status -->
                                    <div class="form-group">
                                        <label for="resultStatus">Result Status</label>
                                        <select class="form-control" id="resultStatus" name="resultStatus" required>
                                            <option value="ABSENT" ${examResult.resultStatus == 'ABSENT' ? 'selected' : ''}>ABSENT</option>
                                            <option value="FAIL" ${examResult.resultStatus == 'FAIL' ? 'selected' : ''}>FAIL</option>
                                            <option value="PASS" ${examResult.resultStatus == 'PASS' ? 'selected' : ''}>PASS</option>
                                        </select>
                                    </div>

                                    <!-- Hidden Exam Result ID -->
                                    <input type="hidden" name="examResultId" value="${examResult.examResultId}">

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Update Exam Result</button>
                                    <a href="listExamResult" class="btn btn-secondary">Cancel</a>
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
