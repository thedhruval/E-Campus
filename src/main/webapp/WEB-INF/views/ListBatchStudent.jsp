<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Batch Students</title>
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
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">List of Batch Students</h4>
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover table-bordered align-middle">
                                        <thead class="table-dark">
                                            <tr>
                                                <th>Batch Student ID</th>
                                                <th>Student ID</th>
                                                <th>Batch ID</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="bs" items="${batchStudentList}">
                                                <tr>
                                                    <td>${bs.batchStudentId}</td>
                                                    <td>${bs.studentId}</td>
                                                    <td>${bs.batchId}</td>
                                                    <td>
                                                        <a href="deleteBatchStudent?batchStudentId=${bs.batchStudentId}" 
                                                           class="btn btn-danger btn-sm"
                                                           onclick="return confirm('Are you sure you want to remove this student from batch?');">
                                                           Delete
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <a href="admin-dashboard" class="btn btn-secondary">Cancel</a>
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
