<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - New Batch Session</title>
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
                    <div class="col-lg-10 grid-margin stretch-card mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Create New Batch Session</h4>

                                <form action="saveBatchSession" method="post" class="forms-sample">

                                    <!-- Session Date -->
                                    <div class="form-group">
                                        <label for="sessionDate">Session Date</label>
                                        <input type="date" class="form-control" id="sessionDate" name="sessionDate" required>
                                    </div>

                                    <!-- Session Day -->
                                    <div class="form-group">
                                        <label for="sessionDay">Session Day</label>
                                        <select class="form-control" id="sessionDay" name="sessionDay" required>
                                            <option value="">-- Select Day --</option>
                                            <option value="MONDAY">Monday</option>
                                            <option value="TUESDAY">Tuesday</option>
                                            <option value="WEDNESDAY">Wednesday</option>
                                            <option value="THURSDAY">Thursday</option>
                                            <option value="FRIDAY">Friday</option>
                                            <option value="SATURDAY">Saturday</option>
                                            <option value="SUNDAY">Sunday</option>
                                        </select>
                                    </div>

                                    <!-- Session Start Time -->
                                    <div class="form-group">
                                        <label for="sessionStartTime">Session Start Time</label>
                                        <input type="time" class="form-control" id="sessionStartTime" name="sessionStartTime" required>
                                    </div>

                                    <!-- Session End Time -->
                                    <div class="form-group">
                                        <label for="sessionEndTime">Session End Time</label>
                                        <input type="time" class="form-control" id="sessionEndTime" name="sessionEndTime" required>
                                    </div>

                                    <!-- Session Duration -->
                                    <div class="form-group">
                                        <label for="sessionDurationMinutes">Session Duration (Minutes)</label>
                                        <input type="number" class="form-control" id="sessionDurationMinutes" name="sessionDurationMinutes" required>
                                    </div>

                                    <!-- Reporting DateTime -->
                                    <div class="form-group">
                                        <label for="reportingDateTime">Reporting Date & Time</label>
                                        <input type="datetime-local" class="form-control" id="reportingDateTime" name="reportingDateTime">
                                    </div>

                                    <!-- Topic -->
                                    <div class="form-group">
                                        <label for="topic">Topic</label>
                                        <input type="text" class="form-control" id="topic" name="topic" required>
                                    </div>

                                    <!-- Notes -->
                                    <div class="form-group">
                                        <label for="notes">Notes</label>
                                        <textarea class="form-control" id="notes" name="notes" rows="3"></textarea>
                                    </div>

                                    <!-- Attendance Fields (optional now) -->
                                    <div class="form-group">
                                        <label for="presentOffline">Present Offline</label>
                                        <input type="number" class="form-control" id="presentOffline" name="presentOffline">
                                    </div>

                                    <div class="form-group">
                                        <label for="presentOnline">Present Online</label>
                                        <input type="number" class="form-control" id="presentOnline" name="presentOnline">
                                    </div>

                                    <div class="form-group">
                                        <label for="absent">Absent</label>
                                        <input type="number" class="form-control" id="absent" name="absent">
                                    </div>

                                    <div class="form-group">
                                        <label for="late">Late</label>
                                        <input type="number" class="form-control" id="late" name="late">
                                    </div>

                                    <div class="form-group">
                                        <label for="excuse">Excuse</label>
                                        <input type="number" class="form-control" id="excuse" name="excuse">
                                    </div>

                                    <div class="form-group">
                                        <label for="cancel">Cancel</label>
                                        <input type="number" class="form-control" id="cancel" name="cancel">
                                    </div>

                                    <div class="form-group">
                                        <label for="na">N/A</label>
                                        <input type="number" class="form-control" id="na" name="na">
                                    </div>

                                    <!-- Total Students (optional) -->
                                    <div class="form-group">
                                        <label for="totalStudent">Total Students</label>
                                        <input type="number" class="form-control" id="totalStudent" name="totalStudent">
                                    </div>

                                    <!-- Status -->
                                    <div class="form-group">
                                        <label for="status">Status</label>
                                        <select class="form-control" id="status" name="status" required>
                                            <option value="">-- Select Status --</option>
                                            <option value="UPCOMMING">UPCOMMING</option>
                                            <option value="COMPLETED">COMPLETED</option>
                                            <option value="ONGOING">ONGOING</option>
                                            <option value="CANCELLED">CANCELLED</option>
                                        </select>
                                    </div>

                                    <!-- Batch -->
                                    <div class="form-group">
                                        <label for="batchId">Batch</label>
                                        <select class="form-control" id="batchId" name="batchId" required>
                                            <option value="">-- Select Batch --</option>
                                            <c:forEach var="batch" items="${batchList}">
                                                <option value="${batch.batchId}">${batch.batchName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Faculty -->
                                    <div class="form-group">
                                        <label for="facultyId">Faculty</label>
                                        <select class="form-control" id="facultyId" name="facultyId" required>
                                            <option value="">-- Select Faculty --</option>
                                            <c:forEach var="faculty" items="${facultyList}">
                                                <option value="${faculty.userId}">${faculty.firstName} ${faculty.lastName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Save</button>
                                    <a href="admin-dashboard" class="btn btn-secondary">Cancel</a>
                                </form>
                            </div>
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
