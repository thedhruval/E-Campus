<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Edit Batch</title>
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
                                <h4 class="card-title">Edit Batch</h4>

                                <form action="updateBatch" method="post" class="forms-sample">

                                    <div class="form-group">
                                        <label for="batchName">Batch Name</label>
                                        <input type="text" class="form-control" id="batchName"
                                               name="batchName" value="${batch.batchName}" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="batchStatus">Batch Status</label>
                                        <select class="form-control" id="batchStatus" name="batchStatus" required>
                                            <option value="COMPLETED" ${batch.batchStatus == 'COMPLETED' ? 'selected' : ''}>COMPLETED</option>
                                            <option value="HOLD" ${batch.batchStatus == 'HOLD' ? 'selected' : ''}>HOLD</option>
                                            <option value="NOT_STARTED" ${batch.batchStatus == 'NOT_STARTED' ? 'selected' : ''}>NOT_STARTED</option>
                                            <option value="ON_GOING" ${batch.batchStatus == 'ON_GOING' ? 'selected' : ''}>ON_GOING</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="batchType">Batch Type</label>
                                        <select class="form-control" id="batchType" name="batchType" required>
                                            <option value="CLUB" ${batch.batchType == 'CLUB' ? 'selected' : ''}>CLUB</option>
                                            <option value="COMPLIMENTARY" ${batch.batchType == 'COMPLIMENTARY' ? 'selected' : ''}>COMPLIMENTARY</option>
                                            <option value="GEN" ${batch.batchType == 'GEN' ? 'selected' : ''}>GEN</option>
                                            <option value="GEN200" ${batch.batchType == 'GEN200' ? 'selected' : ''}>GEN200</option>
                                            <option value="GEN40" ${batch.batchType == 'GEN40' ? 'selected' : ''}>GEN40</option>
                                            <option value="ONE_TO_ONE" ${batch.batchType == 'ONE_TO_ONE' ? 'selected' : ''}>ONE_TO_ONE</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <input type="text" class="form-control" id="description"
                                               name="description" value="${batch.description}">
                                    </div>

                                    <div class="form-group">
                                        <label for="startDate">Start Date</label>
                                        <input type="date" class="form-control" id="startDate"
                                               name="startDate" value="${batch.startDate}" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="endDate">End Date</label>
                                        <input type="date" class="form-control" id="endDate"
                                               name="endDate" value="${batch.endDate}" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="facultyId">Faculty</label>
                                        <select class="form-control" id="facultyId" name="facultyId" required>
                                            <c:forEach var="faculty" items="${facultyList}">
                                                <option value="${faculty.userId}" ${batch.facultyId == faculty.userId ? 'selected' : ''}>
                                                    ${faculty.firstName} ${faculty.lastName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="reporterId">Reporter</label>
                                        <select class="form-control" id="reporterId" name="reporterId">
                                            <c:forEach var="reporter" items="${reporterList}">
                                                <option value="${reporter.reporterId}" ${batch.reporterId == reporter.reporterId ? 'selected' : ''}>
                                                    ${reporter.reporterName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="status">Status</label>
                                        <select class="form-control" id="status" name="status" required>
                                            <option value="COMPLETED" ${batch.status == 'COMPLETED' ? 'selected' : ''}>COMPLETED</option>
                                            <option value="HOLD" ${batch.status == 'HOLD' ? 'selected' : ''}>HOLD</option>
                                            <option value="NOT_STARTED" ${batch.status == 'NOT_STARTED' ? 'selected' : ''}>NOT_STARTED</option>
                                            <option value="ON_GOING" ${batch.status == 'ON_GOING' ? 'selected' : ''}>ON_GOING</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="courseId">Course</label>
                                        <select class="form-control" id="courseId" name="courseId" required>
                                            <c:forEach var="course" items="${courseList}">
                                                <option value="${course.courseId}" ${batch.courseId == course.courseId ? 'selected' : ''}>
                                                    ${course.courseName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="subjectId">Subject</label>
                                        <select class="form-control" id="subjectId" name="subjectId">
                                            <c:forEach var="subject" items="${subjectList}">
                                                <option value="${subject.subjectId}" ${batch.subjectId == subject.subjectId ? 'selected' : ''}>
                                                    ${subject.subjectName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <input type="hidden" name="batchId" value="${batch.batchId}">

                                    <button type="submit" class="btn btn-primary me-2">Update Batch</button>
                                    <a href="listBatch" class="btn btn-secondary">Cancel</a>
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
