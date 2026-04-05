<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>New Payment</title>
</head>
<body>
    <h2>Course Payment</h2>
    <form action="${pageContext.request.contextPath}/charge" method="post">
        <!-- Hidden courseId only -->
        <input type="hidden" name="courseId" value="${courseId}" />

        <!-- Credit card details -->
        <label for="creditCardNumber">Credit Card Number:</label>
        <input type="text" id="creditCardNumber" name="creditCardNumber" required /><br/>

        <label for="expirationDate">Expiration Date (MMYY):</label>
        <input type="text" id="expirationDate" name="expirationDate" required /><br/>

        <button type="submit">Pay Now</button>
    </form>
</body>
</html>
