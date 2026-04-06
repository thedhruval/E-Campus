<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Signup</title>
  <!-- base:css -->
  <link rel="stylesheet" href="../../vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
</head>

<body>
  <div class="container-scroller d-flex">
    <div class="container-fluid page-body-wrapper full-page-wrapper d-flex">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-5 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="../../images/logo.png" alt="logo">
              </div>
              <h4>New here?</h4>
              <h6 class="font-weight-light">Sign up to create your account.</h6>
              <form action="register" method="post" enctype="multipart/form-data" class="pt-3">
                
                <!-- First Name -->
                <div class="form-group">
                  <input type="text" name="firstName" class="form-control form-control-lg" placeholder="First Name" required>
                </div>

                <!-- Last Name -->
                <div class="form-group">
                  <input type="text" name="lastName" class="form-control form-control-lg" placeholder="Last Name" required>
                </div>

                <!-- Email -->
                <div class="form-group">
                  <input type="email" name="email" class="form-control form-control-lg" placeholder="Email" required>
                </div>

                <!-- Password -->
                <div class="form-group">
                  <input type="password" name="password" class="form-control form-control-lg" placeholder="Password" required>
                </div>

                <!-- Gender -->
                <div class="form-group">
                  <select class="form-control form-control-lg" name="gender" required>
                    <option value="" disabled selected>Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                  </select>
                </div>

                <!-- Birth Year -->
                <div class="form-group">
                  <input type="number" name="birthYear" class="form-control form-control-lg" placeholder="Birth Year (e.g. 1998)" min="1900" max="2026" required>
                </div>

                <!-- Contact Number -->
                <div class="form-group">
                  <input type="tel" name="contactNum" class="form-control form-control-lg" placeholder="Contact Number" required>
                </div>

                <!-- Profile Picture -->
                <div class="form-group">
                  <input type="file" name="profilePic" class="form-control form-control-lg">
                </div>

                <!-- Qualification -->
                <div class="form-group">
                  <input type="text" name="qualification" class="form-control form-control-lg" placeholder="Qualification">
                </div>

                <!-- City -->
                <div class="form-group">
                  <input type="text" name="city" class="form-control form-control-lg" placeholder="City">
                </div>

                <!-- State -->
                <div class="form-group">
                  <input type="text" name="state" class="form-control form-control-lg" placeholder="State">
                </div>

                <!-- Country -->
                <div class="form-group">
                  <input type="text" name="country" class="form-control form-control-lg" placeholder="Country">
                </div>

                <!-- Submit -->
                <div class="mt-3">
                  <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN UP</button>
                </div>

                <div class="text-center mt-4 font-weight-light">
                  Already have an account? <a href="login" class="text-primary">Login</a>
                </div>
                <br>
                <span class="text-danger">${error}</span>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <jsp:include page="AdminFooter.jsp"></jsp:include>
</body>
</html>
