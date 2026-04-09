<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Faculty Dashboard - Add Student</title>
    <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="../images/favicon.png" />
</head>
<body>
<div class="container-scroller d-flex">
    <jsp:include page="FacultyLeftSidebar.jsp"></jsp:include>
    <div class="container-fluid page-body-wrapper">
        <jsp:include page="FacultyHeader.jsp"></jsp:include>
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Add Student to Batch: ${batch.batchName}</h4>
                                <form action="/faculty/saveBatchStudent" method="post">
                                    <input type="hidden" name="batchId" value="${batch.batchId}">
                                    <div class="mb-3">
                                        <label for="studentId" class="form-label">Student:</label>
                                        <select name="studentId" id="studentId" class="form-select" required>
                                            <c:forEach var="student" items="${students}">
                                                <option value="${student.userId}">
                                                    ${student.firstName} ${student.lastName} (${student.email})
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Add Student</button>
                                    <a href="faculty-dashboard" class="btn btn-secondary">Cancel</a>
                                </form>
                                <c:if test="${empty students}">
                                    <p>No eligible students found for this batch.</p>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="FacultyFooter.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>
</html>
