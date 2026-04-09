<nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    <!-- Category -->
    <li class="nav-item sidebar-category">
      <p>Navigation</p><span></span>
    </li>

    <!-- Dashboard -->
    <li class="nav-item">
      <a class="nav-link" href="/admin-dashboard">
        <i class="mdi mdi-view-dashboard menu-icon"></i>
        <span class="menu-title">Dashboard</span>
      </a>
    </li>

    <!-- Category -->
    <li class="nav-item sidebar-category">
      <p>Components</p><span></span>
    </li>

    <!-- Course -->
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#courseMenu" aria-expanded="false" aria-controls="courseMenu">
        <i class="mdi mdi-book-open-page-variant menu-icon"></i>
        <span class="menu-title">Course</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="courseMenu">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="newCourse">New Course</a></li>
          <li class="nav-item"><a class="nav-link" href="listCourse">List Course</a></li>
        </ul>
      </div>
    </li>

    <!-- Enrollment -->
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#enrollmentMenu" aria-expanded="false" aria-controls="enrollmentMenu">
        <i class="mdi mdi-account-check menu-icon"></i>
        <span class="menu-title">Enrollment</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="enrollmentMenu">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="listEnrollment">List Enrollment</a></li>
        </ul>
      </div>
    </li>

    <!-- User -->
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#userMenu" aria-expanded="false" aria-controls="userMenu">
        <i class="mdi mdi-account-group menu-icon"></i>
        <span class="menu-title">User</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="userMenu">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="newUser">New User</a></li>
          <li class="nav-item"><a class="nav-link" href="listUser">List User</a></li>
        </ul>
      </div>
    </li>

    <!-- Subject -->
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#subjectMenu" aria-expanded="false" aria-controls="subjectMenu">
        <i class="mdi mdi-book-open-page-variant menu-icon"></i>
        <span class="menu-title">Subject</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="subjectMenu">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="newSubject">New Subject</a></li>
          <li class="nav-item"><a class="nav-link" href="listSubject">List Subject</a></li>
        </ul>
      </div>
    </li>

    <!-- Batch -->
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#batchMenu" aria-expanded="false" aria-controls="batchMenu">
        <i class="mdi mdi-calendar-multiple menu-icon"></i>
        <span class="menu-title">Batch</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="batchMenu">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="newBatch">New Batch</a></li>
          <li class="nav-item"><a class="nav-link" href="listBatch">List Batch</a></li>
        </ul>
      </div>
    </li>

    <!-- Attendance -->
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#attendanceMenu" aria-expanded="false" aria-controls="attendanceMenu">
        <i class="mdi mdi-calendar-check menu-icon"></i>
        <span class="menu-title">Attendance</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="attendanceMenu">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="selectBatchForAttendance">Take Attendance</a></li>
          <li class="nav-item"><a class="nav-link" href="/selectSessionForListAttendance">List Attendance</a></li>
        </ul>
      </div>
    </li>

    <!-- Exam -->
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#examMenu" aria-expanded="false" aria-controls="examMenu">
        <i class="mdi mdi-book-open-page-variant menu-icon"></i>
        <span class="menu-title">Exam</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="examMenu">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="newExam">New Exam</a></li>
          <li class="nav-item"><a class="nav-link" href="listExam">List Exam</a></li>
        </ul>
      </div>
    </li>

    <!-- Exam Result -->
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#examResultMenu" aria-expanded="false" aria-controls="examResultMenu">
        <i class="mdi mdi-chart-bar menu-icon"></i>
        <span class="menu-title">Exam Result</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="examResultMenu">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"><a class="nav-link" href="newExamResult">New Exam Result</a></li>
          <li class="nav-item"><a class="nav-link" href="listExamResult">List Exam Result</a></li>
        </ul>
      </div>
    </li>
  </ul>
</nav>
