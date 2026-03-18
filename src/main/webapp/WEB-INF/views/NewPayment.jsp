<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>New Payment</title>
</head>
<body>
    <h2>Enter Payment Details</h2>

    <form action="charge" method="post">
        <table>
            <tr>
                <td>Card Number:</td>
                <td><input type="text" name="cardNumber" maxlength="16" required /></td>
            </tr>
            <tr>
                <td>Expiration Date (MM/YY):</td>
                <td><input type="text" name="expDate" maxlength="5" required /></td>
            </tr>
            <tr>
                <td>CVV:</td>
                <td><input type="text" name="cvv" maxlength="4" required /></td>
            </tr>
            <tr>
                <td>Amount:</td>
                <td><input type="text" name="amount" required /></td>
            </tr>
            <tr>
                <td>Cardholder Name:</td>
                <td><input type="text" name="cardHolder" required /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Pay Now" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
