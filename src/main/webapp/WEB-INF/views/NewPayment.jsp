<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Course Payment</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .payment-card {
            max-width: 500px;
            width: 100%;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }
        .payment-card .card-header {
            background: #4e73df;
            color: #fff;
            font-weight: bold;
            text-align: center;
            font-size: 1.25rem;
        }
        .form-label {
            font-weight: 500;
        }
    </style>
</head>
<body>
    <div class="card payment-card">
        <div class="card-header">
            Secure Course Payment
        </div>
        <div class="card-body">
            <form action="/charge" method="post">
                <!-- Hidden courseId -->
                <input type="hidden" name="courseId" value="${courseId}" />

                <!-- Credit card number -->
                <div class="mb-3">
                    <label for="creditCardNumber" class="form-label">Credit Card Number</label>
                    <input type="text" class="form-control" id="creditCardNumber" name="creditCardNumber" placeholder="1234 5678 9012 3456" required>
                </div>

                <!-- Expiration date -->
                <div class="mb-3">
                    <label for="expirationDate" class="form-label">Expiration Date (MMYY)</label>
                    <input type="text" class="form-control" id="expirationDate" name="expirationDate" placeholder="MMYY" required>
                </div>

                <!-- Pay button -->
                <div class="d-grid">
                    <button type="submit" class="btn btn-success btn-lg">Pay Now</button>
                </div>
            </form>
        </div>
        <div class="card-footer text-muted text-center">
            Your payment is processed securely
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
