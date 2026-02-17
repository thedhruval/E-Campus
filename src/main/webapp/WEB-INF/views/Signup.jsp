<%--<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>E-Campus Signup</title>
<!-- base:css -->
<link rel="stylesheet"
	href="../../vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="../../css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="../../images/favicon.png" />
</head>

<body>
	<div class="container-scroller d-flex">
		<!-- partial:../../partials/_sidebar.html -->
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_navbar.html -->

			<!-- partial -->
			<div align = "center" class="main-panel">
				<div align = "center" class="content-wrapper">
					<div align = "center" class="row">
						<div align = "center" class="col-md-8 grid-margin stretch-card">
							<div align = "center" class="card">
								<div align = "center" class="card-body">
									<h4 align = "center" class="card-title">Default form</h4>
									<p align = "center" class="card-description">Basic form layout</p>
									<form  class="forms-sample">
										<div align = "center" class="form-group">
											<label for="exampleInputUsername1">Username</label> <input
												type="text" class="form-control" id="exampleInputUsername1"
												placeholder="Username">
										</div>
										<div align = "center" class="form-group">
											<label for="exampleInputEmail1">Email address</label> <input
												type="email" class="form-control" id="exampleInputEmail1"
												placeholder="Email">
										</div>
										<div align = "center" class="form-group">
											<label for="exampleInputPassword1">Password</label> <input
												type="password" class="form-control"
												id="exampleInputPassword1" placeholder="Password">
										</div>
										<div align = "center" class="form-group">
											<label for="exampleInputConfirmPassword1">Confirm
												Password</label> <input type="password" class="form-control"
												id="exampleInputConfirmPassword1" placeholder="Password">
										</div>
										<div align = "center" class="form-check form-check-flat form-check-primary">
											<label class="form-check-label"> <input
												type="checkbox" class="form-check-input"> Remember
												me
											</label>
										</div>
										<button type="submit" class="btn btn-primary me-2">Submit</button>
										<button class="btn btn-light">Cancel</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
				<jsp:include page="AdminFooter.jsp"></jsp:include>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- base:js -->
	<script src="../../vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script src="../../js/off-canvas.js"></script>
	<script src="../../js/hoverable-collapse.js"></script>
	<script src="../../js/template.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	<script src="../../js/file-upload.js"></script>
	<!-- End custom js for this page-->
</body>

</html>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        /* Greyed-out placeholder styling for all inputs */
        ::placeholder {
            color: #6c757d;   /* Bootstrap's muted grey */
            opacity: 1;       /* Ensure visibility */
        }
    </style>
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h3 class="text-center mb-4">Sign Up</h3>
                    <form action="register" method="post">
                        <!-- First Name -->
                        <div class="mb-3">
                            <label for="firstName" class="form-label">First Name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" required>
                        </div>

                        <!-- Last Name -->
                        <div class="mb-3">
                            <label for="lastName" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" required>
                        </div>

                        <!-- Email -->
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>

                        <!-- Password -->
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>

                        <!-- Gender -->
                        <div class="mb-3">
                            <label class="form-label">Gender</label>
                            <select class="form-select" name="gender" required>
                                <option value="" disabled selected>Select your gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>

                        <!-- Birth Year -->
                        <div class="mb-3">
                            <label for="birthYear" class="form-label">Birth Year</label>
                            <input type="number" class="form-control" id="birthYear" name="birthYear" 
                                   placeholder="e.g. 1998" min="1900" max="2026" required>
                        </div>
                        
                        <!-- Contact Number -->
                        <div class="mb-3">
                            <label for="contactNumber" class="form-label">Contact Number</label>
                            <input type="tel" class="form-control" id="contactNumber" name="contactNum" 
                                   placeholder="e.g. +91 9876543210" required>
                        </div>

                        <!-- Profile Picture -->
                        <div class="mb-3">
                            <label for="profilePicURL" class="form-label">Profile Picture</label>
                            <input type="file" class="form-control" id="profilePicURL" name="profilePicURL">
                        </div>

                        <!-- Qualification -->
                        <div class="mb-3">
                            <label for="qualification" class="form-label">Qualification</label>
                            <input type="text" class="form-control" id="qualification" name="qualification">
                        </div>

                        <!-- City -->
                        <div class="mb-3">
                            <label for="city" class="form-label">City</label>
                            <input type="text" class="form-control" id="city" name="city">
                        </div>

                        <!-- State -->
                        <div class="mb-3">
                            <label for="state" class="form-label">State</label>
                            <input type="text" class="form-control" id="state" name="state">
                        </div>

                        <!-- Country -->
                        <div class="mb-3">
                            <label for="country" class="form-label">Country</label>
                            <input type="text" class="form-control" id="country" name="country">
                        </div>

                        <!-- Submit Button -->
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Sign Up</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Links below card -->
            <p class="text-center mt-3">
                Already have an account? <a href="login">Login here</a>
            </p>
        </div>
    </div>
</div>
<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
