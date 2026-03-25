<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="css/style.css">
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
                        <div class="col-lg-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">List of all Batches</h4>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered align-middle">
                                            <thead class="table-dark">
                                                <tr>
                                                    <th>Batch Name</th>
                                                    <th>Batch Status</th>
                                                    <th>Batch Type</th>
                                                    <th>Description</th>
                                                    <th>Start Date</th>
                                                    <th>End Date</th>
                                                    <th>Faculty ID</th>
                                                    <th>Reporter ID</th>
                                                    <th>Status</th>
                                                    <th>Course ID</th>
                                                    <th>Subject ID</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="batch" items="${batchList}">
                                                    <tr>
                                                        <td>${batch.batchName}</td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${batch.batchStatus eq 'COMPLETED'}">
                                                                    <span class="badge bg-success">Completed</span>
                                                                </c:when>
                                                                <c:when test="${batch.batchStatus eq 'ON_GOING'}">
                                                                    <span class="badge bg-primary">On Going</span>
                                                                </c:when>
                                                                <c:when test="${batch.batchStatus eq 'HOLD'}">
                                                                    <span class="badge bg-warning">Hold</span>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <span class="badge bg-secondary">Not Started</span>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>${batch.batchType}</td>
                                                        <td>${batch.description}</td>
                                                        <td>${batch.startDate}</td>
                                                        <td>${batch.endDate}</td>
                                                        <td>${batch.facultyId}</td>
                                                        <td>${batch.reporterId}</td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${batch.status eq 'COMPLETED'}">
                                                                    <span class="badge bg-success">Completed</span>
                                                                </c:when>
                                                                <c:when test="${batch.status eq 'ON_GOING'}">
                                                                    <span class="badge bg-primary">On Going</span>
                                                                </c:when>
                                                                <c:when test="${batch.status eq 'HOLD'}">
                                                                    <span class="badge bg-warning">Hold</span>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <span class="badge bg-secondary">Not Started</span>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>${batch.courseId}</td>
                                                        <td>${batch.subjectId}</td>
                                                        <td>
                                                            <a href="viewBatch?batchId=${batch.batchId}" class="btn btn-info btn-sm">View</a>
                                                            <a href="editBatch?batchId=${batch.batchId}" class="btn btn-warning btn-sm">Edit</a>
                                                            <a href="deleteBatch?batchId=${batch.batchId}" class="btn btn-danger btn-sm"
                                                               onclick="return confirm('Are you sure you want to delete this batch?');">Delete</a>
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
