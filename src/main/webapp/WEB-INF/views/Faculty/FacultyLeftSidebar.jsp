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
			aria-controls="courseMenu"> <i class="mdi mdi-palette menu-icon"></i>
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
			aria-controls="userMenu"> <i class="mdi mdi-palette menu-icon"></i>
				<span class="menu-title">Student</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="userMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="/faculty/newStudent">New
							Student</a></li>
					<li class="nav-item"><a class="nav-link" href="/faculty/listStudent">List
							Students</a></li>
				</ul>
			</div></li>

		<!-- Subject -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#subjectMenu" aria-expanded="false"
			aria-controls="subjectMenu"> <i class="mdi mdi-palette menu-icon"></i>
				<span class="menu-title">Subject</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="subjectMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="listSubject">List
							Subjects</a></li>
				</ul>
			</div></li>

		<!-- Batch -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#batchMenu" aria-expanded="false"
			aria-controls="batchMenu"> <i class="mdi mdi-palette menu-icon"></i>
				<span class="menu-title">Batch</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="batchMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="selectBatchForAttendance">Take Attendance</a></li>
					<li class="nav-item"><a class="nav-link" href="listBatch">List
							Batches</a></li>
					<li class="nav-item"><a class="nav-link" href="selectBatchToAddStudent">Add student to Batch</a></li>
				</ul>
			</div></li>

		<!-- Batch Time -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#batchTimeMenu" aria-expanded="false"
			aria-controls="batchTimeMenu"> <i
				class="mdi mdi-palette menu-icon"></i> <span class="menu-title">Batch
					Time</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="batchTimeMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="facultyNewBatchTime">New
							Batch Time</a></li>
					<li class="nav-item"><a class="nav-link" href="facultyListBatchTime">List
							Batch Time</a></li>
				</ul>
			</div></li>

		<!-- Batch Session -->
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#batchSessionMenu"
			aria-expanded="false" aria-controls="batchSessionMenu"> <i
				class="mdi mdi-palette menu-icon"></i> <span class="menu-title">Batch
					Session</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="batchSessionMenu">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="newBatchSession">New Batch Session</a></li>
					<li class="nav-item"><a class="nav-link"
						href="listBatchSession">List Batch Session</a></li>
				</ul>
			</div></li>
	</ul>
</nav>
