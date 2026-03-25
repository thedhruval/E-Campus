<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Faculty Dashboard - Add Batch Time</title>
    <!-- base:css -->
    <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
    <!-- inject:css -->
    <link rel="stylesheet" href="../css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../images/favicon.png" />
</head>
<body>
<div class="container-scroller d-flex">

    <!-- Sidebar -->
    <jsp:include page="FacultyLeftSidebar.jsp"></jsp:include>

    <div class="container-fluid page-body-wrapper">
        <!-- Header -->
        <jsp:include page="FacultyHeader.jsp"></jsp:include>

        <div class="main-panel">
            <div class="content-wrapper">

                <div class="row">
                    <div class="col-lg-8 grid-margin stretch-card mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Add New Batch Time</h4>

                                <form action="facultySaveBatchTime" method="post" class="forms-sample">

                                    <!-- Time -->
                                    <div class="form-group">
                                        <label for="time">Time</label>
                                        <input type="text" class="form-control" id="time" name="time"
                                               placeholder="e.g. 10:00 AM - 12:00 PM" required>
                                    </div>

                                    <!-- Day -->
                                    <div class="form-group">
                                        <label for="day">Day</label>
                                        <select class="form-control" id="day" name="day" required>
                                            <option value="" disabled selected>Select Day</option>
                                            <option value="Monday">Monday</option>
                                            <option value="Tuesday">Tuesday</option>
                                            <option value="Wednesday">Wednesday</option>
                                            <option value="Thursday">Thursday</option>
                                            <option value="Friday">Friday</option>
                                            <option value="Saturday">Saturday</option>
                                            <option value="Sunday">Sunday</option>
                                        </select>
                                    </div>

                                    <!-- Batch ID -->
                                    <div class="form-group">
                                        <label for="batchId">Batch</label>
                                        <select class="form-control" id="batchId" name="batchId" required>
                                            <option value="" disabled selected>Select Batch</option>
                                            <!-- Dynamically populate from controller -->
                                            <c:forEach var="batch" items="${batches}">
                                                <option value="${batch.batchId}">${batch.batchName}</option>
                                            </c:forEach>
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
            <jsp:include page="FacultyFooter.jsp"></jsp:include>
        </div>
    </div>
</div>


</body>
</html>
