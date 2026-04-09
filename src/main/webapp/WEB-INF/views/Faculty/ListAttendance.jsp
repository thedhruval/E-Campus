<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Attendance List</title>
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
                <h2 class="text-center mb-4">Attendance Records</h2>

                <div class="card">
                    <div class="card-body">
                        <p class="text-center">
                            <strong>Batch:</strong> ${session.batch.batchName} <br/>
                            <strong>Topic:</strong> ${session.topic} <br/>
                            <strong>Date:</strong> ${session.sessionDate} <br/>
                            <strong>Status:</strong> ${session.status}
                        </p>

                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Student Name</th>
                                        <th>Status</th>
                                        <th>Notes</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="att" items="${attendanceList}">
                                        <tr>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${userMap[att.studentId] != null}">
                                                        ${userMap[att.studentId].firstName} ${userMap[att.studentId].lastName}
                                                    </c:when>
                                                    <c:otherwise>
                                                        Student ID: ${att.studentId}
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>${att.status}</td>
                                            <td>${att.notes}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                        <div class="text-center mt-3">
                            <a href="listBatchSession" class="btn btn-secondary">Cancel</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <jsp:include page="FacultyFooter.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>
</html>
