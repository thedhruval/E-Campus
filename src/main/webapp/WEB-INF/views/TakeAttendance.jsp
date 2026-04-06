<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard</title>
    <!-- base:css -->
    <link rel="stylesheet"
          href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
<div class="container-scroller d-flex">

    <!-- partial:./partials/_sidebar.html -->
    <jsp:include page="AdminLeftSidebar.jsp"></jsp:include>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:./partials/_navbar.html -->
        <jsp:include page="AdminHeader.jsp"></jsp:include>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">

                <div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Mark Attendance</h4>
                                <form action="saveAttendance" method="post">
                                    <input type="hidden" name="sessionId" value="${sessionId}" />
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered align-middle">
                                            <thead class="table-dark">
                                                <tr>
                                                    <th>Student Name</th>
                                                    <th>Status</th>
                                                    <th>Notes</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="student" items="${students}">
                                                    <tr>
                                                        <!-- Student Name -->
                                                        <td class="align-middle">
                                                            ${student.user.firstName} ${student.user.lastName}
                                                        </td>

                                                        <!-- Attendance Options -->
                                                        <td class="align-middle">
                                                            <div class="btn-group" role="group" aria-label="Attendance Options">
                                                                <input type="radio" class="btn-check"
                                                                       name="student_${student.studentId}" value="PRESENT_OFFLINE"
                                                                       id="offline_${student.studentId}" autocomplete="off">
                                                                <label class="btn btn-outline-success btn-sm"
                                                                       for="offline_${student.studentId}">Offline</label>

                                                                <input type="radio" class="btn-check"
                                                                       name="student_${student.studentId}" value="PRESENT_ONLINE"
                                                                       id="online_${student.studentId}" autocomplete="off">
                                                                <label class="btn btn-outline-info btn-sm"
                                                                       for="online_${student.studentId}">Online</label>

                                                                <input type="radio" class="btn-check"
                                                                       name="student_${student.studentId}" value="ABSENT"
                                                                       id="absent_${student.studentId}" autocomplete="off">
                                                                <label class="btn btn-outline-danger btn-sm"
                                                                       for="absent_${student.studentId}">Absent</label>

                                                                <input type="radio" class="btn-check"
                                                                       name="student_${student.studentId}" value="LATE"
                                                                       id="late_${student.studentId}" autocomplete="off">
                                                                <label class="btn btn-outline-warning btn-sm"
                                                                       for="late_${student.studentId}">Late</label>

                                                                <input type="radio" class="btn-check"
                                                                       name="student_${student.studentId}" value="EXCUSED"
                                                                       id="excused_${student.studentId}" autocomplete="off">
                                                                <label class="btn btn-outline-primary btn-sm"
                                                                       for="excused_${student.studentId}">Excused</label>

                                                                <input type="radio" class="btn-check"
                                                                       name="student_${student.studentId}" value="NA"
                                                                       id="na_${student.studentId}" autocomplete="off">
                                                                <label class="btn btn-outline-secondary btn-sm"
                                                                       for="na_${student.studentId}">N/A</label>
                                                            </div>
                                                        </td>

                                                        <!-- Notes -->
                                                        <td class="align-middle">
                                                            <input type="text" class="form-control"
                                                                   name="notes_${student.studentId}" placeholder="Add notes...">
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Save Attendance</button>
                                    <a href="/admin-dashboard" class="btn btn-secondary">Cancel</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- row end -->

            </div>
            <!-- content-wrapper ends -->
            <!-- partial:./partials/_footer.html -->
            <jsp:include page="AdminFooter.jsp"></jsp:include>
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
</body>
</html>
