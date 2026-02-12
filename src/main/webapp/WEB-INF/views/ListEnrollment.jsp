<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enrollment List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h2 class="mb-4 text-center">Enrollment List</h2>

    <table class="table table-striped table-hover table-bordered align-middle">
        <thead class="table-dark">
            <tr>
                <th>Enrollment ID</th>
                <th>User ID</th>
                <th>Date</th>
                <th>Amount</th>
                <th>Transaction ID</th>
                <th>Remarks</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="enroll" items="${enrollmentList}">
                <tr>
                    <td>${enroll.enrollmentId}</td>
                    <td>${enroll.userId}</td>
                    <td>${enroll.date}</td>
                    <td>${enroll.amount}</td>
                    <td>${enroll.transactionId}</td>
                    <td>${enroll.remarks}</td>
                    <td>
                        <a href="viewEnrollment?enrollmentId=${enroll.enrollmentId}" class="btn btn-info btn-sm">View</a>
                        <a href="editEnrollment?enrollmentId=${enroll.enrollmentId}" class="btn btn-warning btn-sm">Edit</a>
                        <a href="deleteEnrollment?enrollmentId=${enroll.enrollmentId}" class="btn btn-danger btn-sm"
                           onclick="return confirm('Are you sure you want to delete this enrollment?');">
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
