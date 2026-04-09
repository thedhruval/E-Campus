<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item sidebar-category">
            <p>Navigation</p> <span></span>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/student/student-dashboard">
                <i class="mdi mdi-view-quilt menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>

        <li class="nav-item sidebar-category">
            <p>Components</p> <span></span>
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
                    <li class="nav-item"><a class="nav-link" href="/student/listCourse">List Course</a></li>
                    <li class="nav-item"><a class="nav-link" href="/student/myCourse">My Courses</a></li>
                </ul>
            </div>
        </li>

        <!-- Batch -->
        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#batchMenu" aria-expanded="false" aria-controls="batchMenu">
                <i class="mdi mdi-account-group menu-icon"></i>
                <span class="menu-title">Batch</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="batchMenu">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="/student/listMyBatch">List My Batches</a></li>
                </ul>
            </div>
        </li>
    </ul>
</nav>
