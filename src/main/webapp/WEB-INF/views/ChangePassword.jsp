<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background:#f4f6f8;">

<div class="container d-flex justify-content-center align-items-center min-vh-100">
  <div class="card shadow-lg" style="max-width: 420px; width: 100%; border-radius: 10px;">
    <div class="card-header text-center bg-success text-white">
      <h4 class="mb-0">Change Password</h4>
    </div>
    <div class="card-body p-4">
      <form action="changePassword" method="post">
        
        <!-- Email -->
        <div class="mb-3">
          <label for="email" class="form-label">Email address</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
        </div>
        
        <!-- OTP -->
        <div class="mb-3">
          <label for="otp" class="form-label">OTP</label>
          <input type="text" class="form-control" id="otp" name="otp" placeholder="Enter OTP" required>
        </div>
        
        <!-- New Password -->
        <div class="mb-3">
          <label for="newPassword" class="form-label">New Password</label>
          <input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="Enter new password" required>
        </div>
        
        <!-- Confirm Password -->
        
        <!-- Buttons -->
        <div class="d-flex justify-content-between">
          <button type="submit" class="btn btn-success">Submit</button>
          <a href="login" class="btn btn-outline-secondary">Cancel</a>
        </div>
        
      </form>
    </div>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
