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
