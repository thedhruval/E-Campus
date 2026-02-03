<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Course</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body class="bg-light">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">E-Campus</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                    data-bs-target="#navbarNav" aria-controls="navbarNav" 
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

    <!-- Course Form -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white text-center">
                        <h4>Add New Course</h4>
                    </div>
                    <div class="card-body">
                        <!-- Form to add course -->
                        <form action="savecourse" method="post">
                            <!-- Course Name -->
                            <div class="mb-3">
                                <label for="courseName" class="form-label">Course Name</label>
                                <input type="text" class="form-control" id="courseName" name="courseName" required>
                            </div>

                            <!-- Total Seats -->
                            <div class="mb-3">
                                <label for="totalSeats" class="form-label">Total Seats</label>
                                <input type="number" class="form-control" id="totalSeats" name="totalSeats" min="1" required>
                            </div>

                            <!-- Academic Cycle -->
                            <div class="mb-3">
                                <label for="academicCycle" class="form-label">Academic Cycle</label>
                                <input type="text" class="form-control" id="academicCycle" name="academicCycle" required>
                            </div>

                            <!-- Paid Seats -->
                            <div class="mb-3">
                                <label for="paidSeats" class="form-label">Paid Seats</label>
                                <input type="number" class="form-control" id="paidSeats" name="paidSeats" min="0" required>
                            </div>

                            <!-- Development Cost -->
                            <div class="mb-3">
                                <label for="developmentCost" class="form-label">Development Cost</label>
                                <input type="number" class="form-control" id="developmentCost" name="developmentCost" min="0" required>
                            </div>

                            <!-- Submit -->
                            <div class="d-grid">
                                <button type="submit" class="btn btn-success">Save Course</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
