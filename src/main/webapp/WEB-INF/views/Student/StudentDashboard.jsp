<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Student Dashboard</title>
<!-- base:css -->
<link rel="stylesheet"
	href="../vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="../css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="../images/favicon.png" />
</head>
<body>
	<div class="container-scroller d-flex">

		<!-- partial:./partials/_sidebar.html -->
		<jsp:include page="StudentLeftSidebar.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:./partials/_navbar.html -->
			<jsp:include page="StudentHeader.jsp"></jsp:include>

			<!-- <div class="col-md-6 stretch-card">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">My Attendance Summary</h4>
						<canvas id="studentAttendanceChart"></canvas>
					</div>
				</div>
			</div> -->
			<!-- partial -->
			
				<!-- content-wrapper ends -->
				<!-- partial:./partials/_footer.html -->
				<jsp:include page="StudentFooter.jsp"></jsp:include>
				<script type="text/javascript">
					var presentCount = $
					{
						presentCount
					};
					var absentCount = $
					{
						absentCount
					};
				</script>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->


</body>

</html>