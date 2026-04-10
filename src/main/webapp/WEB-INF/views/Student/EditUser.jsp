<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Student Dashboard - Edit My Profile</title>
<link rel="stylesheet"
    href="../vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="shortcut icon" href="../images/favicon.png" />
</head>
<body>
    <div class="container-scroller d-flex">

        <jsp:include page="StudentLeftSidebar.jsp"></jsp:include>

        <div class="container-fluid page-body-wrapper">
            <jsp:include page="StudentHeader.jsp"></jsp:include>

            <div class="main-panel">
                <div class="content-wrapper">

                    <div class="row">
                        <div class="col-lg-8 grid-margin stretch-card mx-auto">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Edit User</h4>

                                    <form action="updateUser" method="post" enctype="multipart/form-data" class="forms-sample">

                                        <!-- First Name -->
                                        <div class="form-group">
                                            <label for="firstName">First Name</label>
                                            <input type="text" id="firstName" name="firstName"
                                                class="form-control form-control-lg"
                                                value ="${user.firstName}" required>
                                        </div>

                                        <!-- Last Name -->
                                        <div class="form-group">
                                            <label for="lastName">Last Name</label>
                                            <input type="text" id="lastName" name="lastName"
                                                class="form-control form-control-lg" value ="${user.lastName}" 
                                                required>
                                        </div>

                                        <!-- Gender -->
                                        <div class="form-group">
                                            <label for="gender">Gender</label>
                                            <select id="gender" class="form-control form-control-lg" name="gender" required>
                                                <option value="Male" <c:if test="${user.gender eq 'Male'}">selected</c:if>>Male</option>
                                                <option value="Female" <c:if test="${user.gender eq 'Female'}">selected</c:if>>Female</option>
                                                <option value="Other" <c:if test="${user.gender eq 'Other'}">selected</c:if>>Other</option>
                                            </select>
                                        </div>

                                        <!-- Birth Year -->
                                        <div class="form-group">
                                            <label for="birthYear">Birth Year</label>
                                            <input type="number" id="birthYear" name="birthYear"
                                                class="form-control form-control-lg"
                                                value ="${user.birthYear}" min="1900" max="2026"
                                                required>
                                        </div>

                                        <!-- Contact Number -->
                                        <div class="form-group">
                                            <label for="contactNum">Contact Number</label>
                                            <input type="tel" id="contactNum" name="contactNum"
                                                class="form-control form-control-lg"
                                                value ="${user.contactNum}" required>
                                        </div>

                                        <!-- Qualification -->
                                        <div class="form-group">
                                            <label for="qualification">Qualification</label>
                                            <input type="text" id="qualification" name="qualification"
                                                value ="${userDetail.qualification}"
                                                class="form-control form-control-lg">
                                        </div>

                                        <!-- City -->
                                        <div class="form-group">
                                            <label for="city">City</label>
                                            <input type="text" id="city" name="city"
                                                class="form-control form-control-lg" value ="${userDetail.city}" >
                                        </div>

                                        <!-- State -->
                                        <div class="form-group">
                                            <label for="state">State</label>
                                            <input type="text" id="state" name="state"
                                                class="form-control form-control-lg" value ="${userDetail.state}">
                                        </div>

                                        <!-- Country -->
                                        <div class="form-group">
                                            <label for="country">Country</label>
                                            <input type="text" id="country" name="country"
                                                class="form-control form-control-lg" value ="${userDetail.country}">
                                        </div>

                                        <!-- Buttons -->
                                        <button type="submit" class="btn btn-primary me-2">Update My Profile</button>
                                        <a href="viewMyProfile" class="btn btn-secondary">Cancel</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <jsp:include page="StudentFooter.jsp"></jsp:include>
            </div>
        </div>
    </div>
</body>
</html>
