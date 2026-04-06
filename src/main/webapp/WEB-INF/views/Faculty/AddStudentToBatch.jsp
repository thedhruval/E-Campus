<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h3>Add Student to Batch: ${batch.batchName}</h3>
<form action="saveBatchStudent" method="post">
  <input type="hidden" name="batchId" value="${batch.batchId}">
  <select name="studentId" required>
    <c:forEach var="student" items="${students}">
      <option value="${student.userId}">${student.firstName} ${student.lastName} (${student.email})</option>
    </c:forEach>
  </select>
  <button type="submit">Add Student</button>
</form>
