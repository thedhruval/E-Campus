<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item sidebar-category">
			<p>Navigation</p> <span></span>
		</li>
		<li class="nav-item"><a class="nav-link"
			href="/faculty/faculty-dashboard"> <i
				class="mdi mdi-view-quilt menu-icon"></i> <span class="menu-title">Dashboard</span>
		</a></li>

		<li class="nav-item sidebar-category">
			<p>Components</p> <span></span>
		</li>

		<!-- Course -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#courseMenu" aria-expanded="false"
			aria-controls="courseMenu"> <i class="mdi mdi-book-open-page-variant menu-icon"></i>
				<span class="menu-title">Course</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="courseMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="listCourse">List
							Course</a></li>
				</ul>
			</div></li>

		<!-- User -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#userMenu" aria-expanded="false"
			aria-controls="userMenu"> <i class="mdi mdi-account-group menu-icon"></i>
				<span class="menu-title">Student</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="userMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="/faculty/newStudent">New Student</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/faculty/listStudent">List Students</a></li>
				</ul>
			</div></li>


		<!-- Batch -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#batchMenu" aria-expanded="false"
			aria-controls="batchMenu"> <i class="mdi mdi-calendar-multiple menu-icon"></i>
				<span class="menu-title">Batch</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="batchMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="listMyBatch">List
							My Batches</a></li>
					<li class="nav-item"><a class="nav-link"
						href="selectBatchToAddStudent">Add student to Batch</a></li>
				</ul>
			</div></li>

		<!-- Attendance -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#attendanceMenu"
			aria-expanded="false" aria-controls="attendanceMenu"> <i
				class="mdi mdi-calendar-check menu-icon"></i> <span
				class="menu-title">Attendance</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="attendanceMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="selectBatchForAttendance">Take Attendance</a></li>
					<li class="nav-item"><a class="nav-link"
						href="listBatchSession">List Attendance</a></li>
				</ul>
			</div></li>

		<!-- Batch Session -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#batchSessionMenu"
			aria-expanded="false" aria-controls="batchSessionMenu"> <i
				class="mdi mdi-calendar-check menu-icon"></i> <span class="menu-title">Batch
					Session</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="batchSessionMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="newBatchSession">New Batch Session</a></li>
					<li class="nav-item"><a class="nav-link"
						href="listBatchSession">List My Batch Session</a></li>
				</ul>
			</div></li>
		<!-- Exam -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#examMenu" aria-expanded="false"
			aria-controls="examMenu"> <i
				class="mdi mdi-book-open-page-variant menu-icon"></i> <span
				class="menu-title">Exam</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="examMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="newExam">New
							Exam</a></li>
					<li class="nav-item"><a class="nav-link" href="listExam">List
							Exam</a></li>
				</ul>
			</div></li>

		<!-- Exam Result -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#examResultMenu"
			aria-expanded="false" aria-controls="examResultMenu"> <i
				class="mdi mdi-chart-bar menu-icon"></i> <span class="menu-title">Exam
					Result</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="examResultMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="newExamResult">New
							Exam Result</a></li>
				</ul>
			</div></li>

	</ul>
</nav>
