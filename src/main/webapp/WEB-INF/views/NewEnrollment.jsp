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
    <title>Admin Dashboard - Add Enrollment</title>
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
                                <h4 class="card-title">Add Enrollment</h4>

                                <form action="saveEnrollment" method="post" class="forms-sample">

                                    <!-- Date -->
                                    <div class="form-group">
                                        <label for="date">Date</label>
                                        <input type="date" class="form-control" id="date" name="date" required>
                                    </div>

                                    <!-- Amount -->
                                    <div class="form-group">
                                        <label for="amount">Amount</label>
                                        <input type="number" step="0.01" class="form-control" id="amount" name="amount" required>
                                    </div>

                                    <!-- Transaction ID -->
                                    <div class="form-group">
                                        <label for="transactionId">Transaction ID</label>
                                        <input type="text" class="form-control" id="transactionId" name="transactionId" required>
                                    </div>

                                    <!-- Remarks -->
                                    <div class="form-group">
                                        <label for="remarks">Remarks</label>
                                        <textarea class="form-control" id="remarks" name="remarks" rows="3"></textarea>
                                    </div>

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Submit</button>
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

<!-- base:js -->
<script src="vendors/js/vendor.bundle.base.js"></script>
<!-- inject:js -->
<script src="js/off-canvas.js"></script>
<script src="js/hoverable-collapse.js"></script>
<script src="js/template.js"></script>
<!-- Custom js -->
<script src="js/dashboard.js"></script>
</body>
</html>
