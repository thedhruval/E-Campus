<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Edit Attendance</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container-scroller d-flex">
    <jsp:include page="AdminLeftSidebar.jsp"></jsp:include>
    <div class="container-fluid page-body-wrapper">
        <jsp:include page="AdminHeader.jsp"></jsp:include>

        <div class="main-panel">
            <div class="content-wrapper">
                <h2>Edit Attendance</h2>

                <form action="updateAttendance" method="post">
                    <input type="hidden" name="attendanceId" value="${attendance.attendanceId}" />
                    <input type="hidden" name="batchSessionId" value="${attendance.batchSessionId}" />

                    <p>Student: ${student.firstName} ${student.lastName}</p>

                    <label for="status">Status:</label>
                    <select name="status" id="status" required>
                        <option value="PRESENT_OFFLINE" ${attendance.status == 'PRESENT_OFFLINE' ? 'selected' : ''}>Present Offline</option>
                        <option value="PRESENT_ONLINE" ${attendance.status == 'PRESENT_ONLINE' ? 'selected' : ''}>Present Online</option>
                        <option value="ABSENT" ${attendance.status == 'ABSENT' ? 'selected' : ''}>Absent</option>
                        <option value="LATE" ${attendance.status == 'LATE' ? 'selected' : ''}>Late</option>
                        <option value="EXCUSED" ${attendance.status == 'EXCUSED' ? 'selected' : ''}>Excused</option>
                        <option value="NA" ${attendance.status == 'NA' ? 'selected' : ''}>N/A</option>
                    </select>
                    <br/><br/>

                    <label for="notes">Notes:</label>
                    <textarea name="notes" id="notes" rows="3">${attendance.notes}</textarea>
                    <br/><br/>

                    <button type="submit" class="btn btn-success">Update</button>
                    <a href="listAttendance?sessionId=${attendance.batchSessionId}" class="btn btn-secondary">Cancel</a>
                </form>
            </div>
            <jsp:include page="AdminFooter.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>
</html>
