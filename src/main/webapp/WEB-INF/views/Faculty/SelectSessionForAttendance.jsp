<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Select Session</title></head>
<body>
<h2>Select Session</h2>
<form action="/faculty/takeAttendance" method="get">
    <input type="hidden" name="batchId" value="${batchId}"/>
    <label for="sessionId">Session:</label>
    <select name="sessionId">
        <c:forEach var="session" items="${sessions}">
            <option value="${session.batchSessionId}">
                ${session.sessionDate} - ${session.topic}
            </option>
        </c:forEach>
    </select>
    <button type="submit">Next</button>
</form>
</body>
</html>
