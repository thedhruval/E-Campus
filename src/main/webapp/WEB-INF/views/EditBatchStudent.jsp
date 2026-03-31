<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - New Batch Student</title>
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
                    <div class="col-lg-8 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Add Student to Batch</h4>

                                <form action="saveBatchStudent" method="post">
                                    <div class="form-group">
                                        <label for="studentId">Select Student</label>
                                        <select class="form-control" id="studentId" name="studentId" required>
                                            <option value="">-- Select Student --</option>
                                            <c:forEach var="student" items="${studentList}">
                                                <option value="${student.userId}">
                                                    ${student.firstName} ${student.lastName} (${student.email})
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="batchId">Select Batch</label>
                                        <select class="form-control" id="batchId" name="batchId" required>
                                            <option value="">-- Select Batch --</option>
                                            <c:forEach var="batch" items="${batchList}">
                                                <option value="${batch.batchId}">
                                                    ${batch.batchName}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <a href="admin-dashboard" class="btn btn-secondary">Cancel</a>
                                </form>
                            </div>
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
