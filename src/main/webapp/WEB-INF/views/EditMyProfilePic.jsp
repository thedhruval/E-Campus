<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Dashboard - Edit My Profile Picture</title>
<link rel="stylesheet"
	href="vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="css/style.css">
<link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
	<div class="container-scroller d-flex">

		<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

		<div class="container-fluid page-body-wrapper">
			<jsp:include page="AdminHeader.jsp"></jsp:include>

			<div class="main-panel">
				<div class="content-wrapper">

					<div class="row">
						<div class="col-lg-8 grid-margin stretch-card mx-auto">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Edit User</h4>

									<form action="updateMyProfilePic" method="post"
										enctype="multipart/form-data" class="forms-sample">

										<!-- Profile Picture -->
										<div class="form-group">
											<input type="file" name="profilePic"
												class="form-control form-control-lg">
										</div>
										<!-- Buttons -->
										<button type="submit" class="btn btn-primary me-2">Update
											My Profile</button>
										<a href="viewMyProfile" class="btn btn-secondary">Cancel</a>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>

				<jsp:include page="AdminFooter.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>
