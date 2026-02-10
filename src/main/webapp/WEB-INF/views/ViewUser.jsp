<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View User</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5 mb-5">
    <h2 class="text-center mb-4">User Details</h2>

    <div class="row justify-content-center">
        <!-- UserEntity Card -->
        <div class="col-md-6 col-lg-5 mb-4">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    Basic Information
                </div>
                <div class="card-body">
                    <div class="text-center mb-3">
                        <img src="${user.profilePicURL}" alt="Profile Picture"
                             class="rounded-circle img-thumbnail"
                             style="width:120px; height:120px;">
                    </div>
                    <p><strong>First Name:</strong> ${user.firstName}</p>
                    <p><strong>Last Name:</strong> ${user.lastName}</p>
                    <p><strong>Email:</strong> ${user.email}</p>
                    <p><strong>Created At:</strong> ${user.createdAt}</p>
                    <p><strong>Role:</strong> ${user.role}</p>
                    <p><strong>Gender:</strong> ${user.gender}</p>
                    <p><strong>Birth Year:</strong> ${user.birthYear}</p>
                    <p><strong>Contact Number:</strong> ${user.contactNum}</p>
                    <p>
                        <strong>Status:</strong>
                        <c:choose>
                            <c:when test="${user.active}">
                                <span class="badge bg-success">Active</span>
                            </c:when>
                            <c:otherwise>
                                <span class="badge bg-danger">Inactive</span>
                            </c:otherwise>
                        </c:choose>
                    </p>
                </div>
            </div>
        </div>

        <!-- UserDetailEntity Card -->
        <div class="col-md-6 col-lg-5 mb-4">
            <div class="card shadow-sm">
                <div class="card-header bg-secondary text-white">
                    Additional Details
                </div>
                <div class="card-body">
                    <p><strong>Qualification:</strong> ${userDetail.qualification}</p>
                    <p><strong>City:</strong> ${userDetail.city}</p>
                    <p><strong>State:</strong> ${userDetail.state}</p>
                    <p><strong>Country:</strong> ${userDetail.country}</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Action Buttons -->
    <div class="text-center mt-4">
        <a href="editUser?userId=${user.userId}" class="btn btn-warning me-2">Edit</a>
        <a href="deleteUser?userId=${user.userId}" class="btn btn-danger me-2"
           onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
        <a href="listUser" class="btn btn-secondary">Back to List</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
