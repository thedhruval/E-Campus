<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Take Attendance</title></head>
<body>
<h2>Mark Attendance</h2>
<form action="/faculty/saveAttendance" method="post">
    <input type="hidden" name="sessionId" value="${sessionId}"/>
    <c:forEach var="student" items="${students}">
        <div>
            <span>Student ID: ${student.studentId}</span>
            <select name="student_${student.studentId}">
                <option value="PRESENT">Present</option>
                <option value="ABSENT">Absent</option>
                <option value="LATE">Late</option>
                <option value="EXCUSED">Excused</option>
                <option value="NA">N/A</option>
            </select>
        </div>
    </c:forEach>
    <button type="submit">Save Attendance</button>
</form>
</body>
</html>
