<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Add User</title>
    <!-- base:css -->
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- inject:css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- endinject -->
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
                                <h4 class="card-title">Add New User</h4>

                                <form action="saveUser" method="post" enctype="multipart/form-data" class="forms-sample">

                                    <!-- First Name -->
                                    <div class="form-group">
                                        <label for="firstName">First Name</label>
                                        <input type="text" class="form-control" id="firstName" name="firstName" required>
                                    </div>

                                    <!-- Last Name -->
                                    <div class="form-group">
                                        <label for="lastName">Last Name</label>
                                        <input type="text" class="form-control" id="lastName" name="lastName" required>
                                    </div>

                                    <!-- Email -->
                                    <div class="form-group">
                                        <label for="email">Email address</label>
                                        <input type="email" class="form-control" id="email" name="email" required>
                                    </div>

                                    <!-- Password -->
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" id="password" name="password" required>
                                    </div>

                                    <!-- Gender -->
                                    <div class="form-group">
                                        <label for="gender">Gender</label>
                                        <select class="form-control" id="gender" name="gender" required>
                                            <option value="" disabled selected>Select your gender</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                            <option value="Other">Other</option>
                                        </select>
                                    </div>

                                    <!-- Birth Year -->
                                    <div class="form-group">
                                        <label for="birthYear">Birth Year</label>
                                        <input type="number" class="form-control" id="birthYear" name="birthYear"
                                               placeholder="e.g. 1998" min="1900" max="2026" required>
                                    </div>

                                    <!-- Contact Number -->
                                    <div class="form-group">
                                        <label for="contactNumber">Contact Number</label>
                                        <input type="tel" class="form-control" id="contactNumber" name="contactNum"
                                               placeholder="e.g. +91 9876543210" required>
                                    </div>

                                    <!-- Profile Picture -->
                                    <div class="form-group">
                                        <label for="profilePicURL">Profile Picture</label>
                                        <input type="file" class="form-control" id="profilePicURL" name="profilePic">
                                    </div>

                                    <!-- Qualification -->
                                    <div class="form-group">
                                        <label for="qualification">Qualification</label>
                                        <input type="text" class="form-control" id="qualification" name="qualification">
                                    </div>

                                    <!-- City -->
                                    <div class="form-group">
                                        <label for="city">City</label>
                                        <input type="text" class="form-control" id="city" name="city">
                                    </div>

                                    <!-- State -->
                                    <div class="form-group">
                                        <label for="state">State</label>
                                        <input type="text" class="form-control" id="state" name="state">
                                    </div>

                                    <!-- Country -->
                                    <div class="form-group">
                                        <label for="country">Country</label>
                                        <input type="text" class="form-control" id="country" name="country">
                                    </div>

                                    <!-- Role Dropdown -->
                                    <div class="form-group">
                                        <label for="role">Role</label>
                                        <select class="form-control" id="role" name="role" required>
                                            <option value="" disabled selected>Select Role</option>
                                            <option value="ADMIN">ADMIN</option>
                                            <option value="FACULTY">FACULTY</option>
                                            <option value="STUDENT">STUDENT</option>
                                        </select>
                                    </div>

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Save</button>
                                    <a href="admin-dashboard" class="btn btn-secondary">Cancel</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- content-wrapper ends -->

            <!-- Footer -->
            <jsp:include page="AdminFooter.jsp"></jsp:include>
        </div>
    </div>
</div>


</body>
</html>
