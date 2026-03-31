<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Edit Course</title>
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="css/style.css">
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
                                <h4 class="card-title">Edit Course</h4>

                                <form action="updateCourse" method="post" class="forms-sample">

                                    <!-- Course Name -->
                                    <div class="form-group">
                                        <label for="courseName">Course Name</label>
                                        <input type="text" class="form-control" id="courseName" 
                                               name="courseName" value="${course.courseName}" required>
                                    </div>

                                    <!-- Total Seats -->
                                    <div class="form-group">
                                        <label for="totalSeats">Total Seats</label>
                                        <input type="number" class="form-control" id="totalSeats" 
                                               name="totalSeats" value="${course.totalSeats}" min="1" required>
                                    </div>

                                    <!-- Academic Cycle -->
                                    <div class="form-group">
                                        <label for="academicCycle">Academic Cycle</label>
                                        <input type="text" class="form-control" id="academicCycle" 
                                               name="academicCycle" value="${course.academicCycle}" required>
                                    </div>

                                    <!-- Paid Seats -->
                                    <div class="form-group">
                                        <label for="paidSeats">Paid Seats</label>
                                        <input type="number" class="form-control" id="paidSeats" 
                                               name="paidSeats" value="${course.paidSeats}" min="0" required>
                                    </div>

                                    <!-- Development Cost -->
                                    <div class="form-group">
                                        <label for="developmentCost">Development Cost</label>
                                        <input type="number" class="form-control" id="developmentCost" 
                                               name="developmentCost" value="${course.developmentCost}" min="0" required>
                                    </div>

                                    <!-- Active Status -->
                                    <div class="form-group">
                                        <label for="active">Status</label>
                                        <select class="form-control" id="active" name="active">
                                            <option value="true" ${course.active ? 'selected' : ''}>Active</option>
                                            <option value="false" ${!course.active ? 'selected' : ''}>Inactive</option>
                                        </select>
                                    </div>

                                    <!-- Hidden Course ID -->
                                    <input type="hidden" name="courseId" value="${course.courseId}">

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Update Course</button>
                                    <a href="listCourse" class="btn btn-secondary">Cancel</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Footer -->
            <jsp:include page="AdminFooter.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>
</html>
