<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h2 class="mb-4 text-center">User List</h2>

    <table class="table table-striped table-hover table-bordered align-middle">
        <thead class="table-dark">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Created At</th>
                <th>Role</th>
                <th>Gender</th>
                <th>Birth Year</th>
                <th>Contact Number</th>
                <th>Profile Picture</th>
                <th>Active</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>${user.createdAt}</td>
                    <td>${user.role}</td>
                    <td>${user.gender}</td>
                    <td>${user.birthYear}</td>
                    <td>${user.contactNum}</td>
                    <td>
                        <img src="${user.profilePicURL}" alt="Profile Pic" 
                             class="img-thumbnail" style="width:60px; height:60px;">
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${user.active}">
                                <span class="badge bg-success">Active</span>
                            </c:when>
                            <c:otherwise>
                                <span class="badge bg-danger">Inactive</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                    	<a href="viewUser?userId=${user.userId}" class="btn btn-info btn-sm">View</a>
                    	<a href="editUser?userId=${user.userId}" class="btn btn-warning btn-sm">Edit</a>
                    	<a href="deleteUser?userId=${user.userId}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this user?');"> Delete </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<div class = btn-btn-secondary align = "center">
<a href = "admin-dashboard" class = btn-btn-secondary >Cancel</a>
</div>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
