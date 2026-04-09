<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Faculty Dashboard - Select Batch</title>
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
                                <h4 class="card-title">Select Batch</h4>
                                <form action="/faculty/addStudentToBatch" method="post">
                                    <div class="mb-3">
                                        <label for="batchId" class="form-label">Batch:</label>
                                        <select name="batchId" id="batchId" class="form-select" required>
                                            <c:forEach var="batch" items="${batches}">
                                                <option value="${batch.batchId}">${batch.batchName}</option>
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
            </div>
            <jsp:include page="FacultyFooter.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>
</html>
