<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            min-height: 100vh;
            display: flex;
        }
        .sidebar {
            min-width: 220px;
            max-width: 220px;
            background-color: #343a40;
            color: #fff;
        }
        .sidebar a {
            color: #adb5bd;
            text-decoration: none;
        }
        .sidebar a:hover {
            color: #fff;
            background-color: #495057;
        }
        .content {
            flex-grow: 1;
            padding: 20px;
        }
        @media (max-width: 768px) {
            .sidebar {
                position: fixed;
                height: 100%;
                z-index: 1000;
            }
            .content {
                margin-left: 220px;
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar d-flex flex-column p-3">
        <h4 class="text-center mb-4">Admin Panel</h4>
        <ul class="nav nav-pills flex-column">
            <li class="nav-item"><a href="newCourse" class="nav-link">New Course</a></li>
            <li class="nav-item"><a href="listCourse" class="nav-link">List Course</a></li>
            <li class="nav-item"><a href="newEnrollment" class="nav-link">New Enrollment</a></li>
            <li class="nav-item"><a href="listUser" class="nav-link">List User</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Settings</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h2>Welcome to Admin Dashboard</h2>
        <p>This is a demo layout with Bootstrap and responsive sidebar.</p>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
