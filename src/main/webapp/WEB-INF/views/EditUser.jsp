<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Edit User</title>
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
                                <h4 class="card-title">Edit User</h4>

                                <form action="updateUser" method="post" class="forms-sample">

                                    <!-- Profile Picture -->
                                    <div class="form-group">
                                        <label for="profilePicURL">Profile Picture</label>
                                        <select class="form-control" id="profilePicURL" name="profilePicURL">
                                            <option value="NULL">-- Remove Profile Picture --</option>
                                            <option value="${user.profilePicURL}" selected>-- Same Profile Picture --</option>
                                        </select>
                                    </div>

                                    <!-- Qualification -->
                                    <div class="form-group">
                                        <label for="qualification">Qualification</label>
                                        <input type="text" class="form-control" id="qualification" 
                                               name="qualification" value="${userDetail.qualification}">
                                    </div>

                                    <!-- Role -->
                                    <div class="form-group">
                                        <label for="role">Role</label>
                                        <select class="form-control" id="role" name="role" required>
                                            <option value="ADMIN" ${user.role == 'ADMIN' ? 'selected' : ''}>ADMIN</option>
                                            <option value="FACULTY" ${user.role == 'FACULTY' ? 'selected' : ''}>FACULTY</option>
                                            <option value="STUDENT" ${user.role == 'STUDENT' ? 'selected' : ''}>STUDENT</option>
                                        </select>
                                    </div>

                                    <!-- Active Status -->
                                    <div class="form-group">
                                        <label for="active">Status</label>
                                        <select class="form-control" id="active" name="active" required>
                                            <option value="true" ${user.active ? 'selected' : ''}>Active</option>
                                            <option value="false" ${!user.active ? 'selected' : ''}>Inactive</option>
                                        </select>
                                    </div>

                                    <!-- Hidden IDs -->
                                    <input type="hidden" name="userId" value="${user.userId}">
                                    <input type="hidden" name="userDetailId" value="${userDetail.userDetailId}">

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Update User</button>
                                    <a href="listUser" class="btn btn-secondary">Cancel</a>
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
