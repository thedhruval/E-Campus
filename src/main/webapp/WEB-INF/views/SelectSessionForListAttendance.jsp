<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Select Session for Attendance List</title>
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
                <div class="card">
                    <div class="card-body">
                        <h2 class="text-center mb-4">Select Session to View Attendance</h2>

                        <form action="listAttendance" method="post" class="text-center">
                            <div class="form-group">
                                <label for="sessionId"><strong>Choose Session:</strong></label>
                                <select name="sessionId" id="sessionId" class="form-control w-50 mx-auto" required>
                                    <c:forEach var="s" items="${sessions}">
                                        <option value="${s.batchSessionId}">
                                            ${s.batch.batchName} - ${s.topic} (${s.sessionDate})
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="mt-4">
                                <button type="submit" class="btn btn-primary mr-2">View Attendance</button>
                                <a href="admin-dashboard" class="btn btn-secondary">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <jsp:include page="AdminFooter.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>
</html>
