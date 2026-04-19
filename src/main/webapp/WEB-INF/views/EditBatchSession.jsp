<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard - Edit Batch Session</title>
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
                    <div class="col-lg-10 grid-margin stretch-card mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Edit Batch Session</h4>

                                <form action="updateBatchSession" method="post" class="forms-sample">

                                    <!-- Session Date -->
                                    <div class="form-group">
                                        <label for="sessionDate">Session Date</label>
                                        <input type="date" class="form-control" id="sessionDate" 
                                               name="sessionDate" value="${batchSession.sessionDate}" required>
                                    </div>

                                    <!-- Session Day -->
                                    <div class="form-group">
                                        <label for="sessionDay">Session Day</label>
                                        <select class="form-control" id="sessionDay" name="sessionDay" required>
                                            <option value="MONDAY" ${batchSession.sessionDay == 'MONDAY' ? 'selected' : ''}>Monday</option>
                                            <option value="TUESDAY" ${batchSession.sessionDay == 'TUESDAY' ? 'selected' : ''}>Tuesday</option>
                                            <option value="WEDNESDAY" ${batchSession.sessionDay == 'WEDNESDAY' ? 'selected' : ''}>Wednesday</option>
                                            <option value="THURSDAY" ${batchSession.sessionDay == 'THURSDAY' ? 'selected' : ''}>Thursday</option>
                                            <option value="FRIDAY" ${batchSession.sessionDay == 'FRIDAY' ? 'selected' : ''}>Friday</option>
                                            <option value="SATURDAY" ${batchSession.sessionDay == 'SATURDAY' ? 'selected' : ''}>Saturday</option>
                                            <option value="SUNDAY" ${batchSession.sessionDay == 'SUNDAY' ? 'selected' : ''}>Sunday</option>
                                        </select>
                                    </div>

                                    <!-- Start/End Time -->
                                    <div class="form-group">
                                        <label for="sessionStartTime">Session Start Time</label>
                                        <input type="time" class="form-control" id="sessionStartTime" 
                                               name="sessionStartTime" value="${batchSession.sessionStartTime}" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="sessionEndTime">Session End Time</label>
                                        <input type="time" class="form-control" id="sessionEndTime" 
                                               name="sessionEndTime" value="${batchSession.sessionEndTime}" required>
                                    </div>

                                    <!-- Duration -->
                                    <div class="form-group">
                                        <label for="sessionDurationMinutes">Session Duration (Minutes)</label>
                                        <input type="number" class="form-control" id="sessionDurationMinutes" 
                                               name="sessionDurationMinutes" value="${batchSession.sessionDurationMinutes}" required>
                                    </div>

                                    

                                    <!-- Topic -->
                                    <div class="form-group">
                                        <label for="topic">Topic</label>
                                        <input type="text" class="form-control" id="topic" 
                                               name="topic" value="${batchSession.topic}" required>
                                    </div>

                                    <!-- Notes -->
                                    <div class="form-group">
                                        <label for="notes">Notes</label>
                                        <textarea class="form-control" id="notes" name="notes" rows="3">${batchSession.notes}</textarea>
                                    </div>

                                    
                                    <div class="form-group"><label for="totalStudent">Total Students</label>
                                        <input type="number" class="form-control" id="totalStudent" name="totalStudent" value="${batchSession.totalStudent}">
                                    </div>

                                    <!-- Status -->
                                    <div class="form-group">
                                        <label for="status">Status</label>
                                        <select class="form-control" id="status" name="status" required>
                                            <option value="UPCOMMING" ${batchSession.status == 'UPCOMMING' ? 'selected' : ''}>UPCOMMING</option>
                                            <option value="COMPLETED" ${batchSession.status == 'COMPLETED' ? 'selected' : ''}>COMPLETED</option>
                                            <option value="ONGOING" ${batchSession.status == 'ONGOING' ? 'selected' : ''}>ONGOING</option>
                                            <option value="CANCELLED" ${batchSession.status == 'CANCELLED' ? 'selected' : ''}>CANCELLED</option>
                                        </select>
                                    </div>

                                    <!-- Batch -->
                                    <div class="form-group">
                                        <label for="batchId">Batch</label>
                                        <select class="form-control" id="batchId" name="batchId" required>
                                            <c:forEach var="batch" items="${batchList}">
                                                <option value="${batch.batchId}" ${batchSession.batchId == batch.batchId ? 'selected' : ''}>${batch.batchName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Faculty -->
                                    <div class="form-group">
                                        <label for="facultyId">Faculty</label>
                                        <select class="form-control" id="facultyId" name="facultyId" required>
                                            <c:forEach var="faculty" items="${facultyList}">
                                                <option value="${faculty.userId}" ${batchSession.facultyId == faculty.userId ? 'selected' : ''}>${faculty.firstName} ${faculty.lastName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <!-- Hidden ID -->
                                    <input type="hidden" name="batchSessionId" value="${batchSession.batchSessionId}">

                                    <!-- Buttons -->
                                    <button type="submit" class="btn btn-primary me-2">Update Batch Session</button>
                                    <a href="listBatchSession" class="btn btn-secondary">Cancel</a>
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
