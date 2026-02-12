<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h2 class="mb-4 text-center">Course List</h2>

    <table class="table table-striped table-hover table-bordered align-middle">
        <thead class="table-dark">
            <tr>
                <th>Course Name</th>
                <th>Active</th>
                <th>Total Seats</th>
                <th>Academic Cycle</th>
                <th>Paid Seats</th>
                <th>Development Cost</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="course" items="${courseList}">
                <tr>
                    <td>${course.courseName}</td>
                    <td>
                        <c:choose>
                            <c:when test="${course.active}">
                                <span class="badge bg-success">Active</span>
                            </c:when>
                            <c:otherwise>
                                <span class="badge bg-danger">Inactive</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>${course.totalSeats}</td>
                    <td>${course.academicCycle}</td>
                    <td>${course.paidSeats}</td>
                    <td>${course.developmentCost}</td>
                    <td>
                        <a href="viewCourse?courseId=${course.courseId}" class="btn btn-info btn-sm">View</a>
                        <a href="editCourse?courseId=${course.courseId}" class="btn btn-warning btn-sm">Edit</a>
                        <a href="deleteCourse?courseId=${course.courseId}" class="btn btn-danger btn-sm"
                           onclick="return confirm('Are you sure you want to delete this course?');">
                           Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<div class="text-center mt-3">
    <a href="admin-dashboard" class="btn btn-secondary">Cancel</a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
