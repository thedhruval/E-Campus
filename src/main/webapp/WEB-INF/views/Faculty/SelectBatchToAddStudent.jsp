<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h3>Select Batch</h3>
<form action="addStudentToBatch" method="post">
  <select name="batchId" required>
    <c:forEach var="batch" items="${batches}">
      <option value="${batch.batchId}">${batch.batchName}</option>
    </c:forEach>
  </select>
  <button type="submit">Next</button>
</form>
