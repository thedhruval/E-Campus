<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Edit Subject</title>
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
                                <h4 class="card-title">Edit Subject</h4>

                                <form action="updateSubject" method="post" class="forms-sample">

                                    <!-- Subject Name -->
                                    <div class="form-group">
                                        <label for="subjectName">Subject Name</label>
                                        <input type="text" class="form-control" id="subjectName" 
                                               name="subjectName" value="${subject.subjectName}" required>
                                    </div>

                                    <!-- Semester -->
                                    <div class="form-group">
                                        <label for="semester">Semester</label>
                                        <input type="number" class="form-control" id="semester" 
                                               name="semester" value="${subject.semester}" min="1" required>
                                    </div>

                                    <!-- Course -->
                                    <div class="form-group">
                                        <label for="courseId">Course</label>
                                        <select class="form-control" id="courseId" name="courseId" required>
                                            <c:forEach var="course" items="${courseList}">
                                                <option value="${course.courseId}" ${subject.courseId == course.courseId ? 'selected' : ''}>
                                                    ${course.courseName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Hidden Subject ID -->
                                    <input type="hidden" name="subjectId" value="${subject.subjectId}">

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Update Subject</button>
                                    <a href="listSubject" class="btn btn-secondary">Cancel</a>
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
