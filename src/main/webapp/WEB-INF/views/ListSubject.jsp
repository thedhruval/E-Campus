<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Dashboard - Subjects</title>
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
                                    <h4 class="card-title">List of all Subjects</h4>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered align-middle">
                                            <thead class="table-dark">
                                                <tr>
                                                    <th>Subject Name</th>
                                                    <th>Course ID</th>
                                                    <th>Semester</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="subject" items="${subjectList}">
                                                    <tr>
                                                        <td>${subject.subjectName}</td>
                                                        <td>${subject.courseId}</td>
                                                        <td>${subject.semester}</td>
                                                        <td>
                                                            <a href="viewSubject?subjectId=${subject.subjectId}" class="btn btn-info btn-sm">View</a>
                                                            <a href="editSubject?subjectId=${subject.subjectId}" class="btn btn-warning btn-sm">Edit</a>
                                                            <a href="deleteSubject?subjectId=${subject.subjectId}" class="btn btn-danger btn-sm"
                                                               onclick="return confirm('Are you sure you want to delete this subject?');">Delete</a>
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
                <!-- Footer -->
                <jsp:include page="AdminFooter.jsp"></jsp:include>
            </div>
        </div>
    </div>

    
</body>
</html>
