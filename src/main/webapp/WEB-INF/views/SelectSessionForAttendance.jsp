<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Select session</title>
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
                                <h4 class="card-title">Select Session</h4>
                                <form action="takeAttendance" method="get">
                                    <input type="hidden" name="batchId" value="${batchId}"/>
                                    <div class="mb-3">
                                        <label for="sessionId" class="form-label">Session:</label>
                                        <select name="sessionId" id="sessionId" class="form-select">
                                            <c:forEach var="session" items="${sessions}">
                                                <option value="${session.batchSessionId}">
                                                    ${session.sessionDate} - ${session.topic}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Next</button>
                                    <a href="faculty-dashboard" class="btn btn-secondary">Cancel</a>
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
