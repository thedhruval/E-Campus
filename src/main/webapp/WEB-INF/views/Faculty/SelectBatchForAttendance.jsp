<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Select Batch</title></head>
<body>
<h2>Select Batch</h2>
<form action="/faculty/selectSessionForAttendance" method="get">
    <label for="batchId">Batch:</label>
    <select name="batchId">
        <c:forEach var="batch" items="${batches}">
            <option value="${batch.batchId}">${batch.batchName}</option>
        </c:forEach>
    </select>
    <button type="submit">Next</button>
</form>
</body>
</html>
