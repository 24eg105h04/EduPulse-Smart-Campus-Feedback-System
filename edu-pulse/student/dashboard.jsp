<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard - Edu Pulse</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            background-color: #f4f6f9;
        }

        /* Sidebar */
        .sidebar {
            width: 220px;
            background-color: #2c3e50;
            color: white;
            height: 100vh;
            padding-top: 20px;
        }

        .sidebar h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .sidebar a {
            display: block;
            padding: 12px 20px;
            color: white;
            text-decoration: none;
            font-size: 15px;
        }

        .sidebar a:hover {
            background-color: #34495e;
        }

        /* Main Area */
        .main {
            flex: 1;
            padding: 25px;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: white;
            padding: 12px 20px;
            border-radius: 6px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
            margin-bottom: 20px;
        }

        /* Profile Card */
        .profile-card {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
            margin-bottom: 20px;
        }

        .profile-card h3 {
            margin-bottom: 10px;
        }

        .profile-details p {
            margin: 6px 0;
            color: #444;
        }

        /* Performance Cards */
        .cards {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .card {
            background: white;
            padding: 20px;
            min-width: 200px;
            flex: 1;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
            text-align: center;
        }

        .card h3 {
            margin-bottom: 10px;
            font-size: 16px;
            color: #555;
        }

        .card p {
            margin: 5px 0;
        }

        .highlight {
            font-size: 24px;
            font-weight: bold;
            color: #2c3e50;
        }

        .risk-low { color: green; font-weight: bold; }
        .risk-medium { color: orange; font-weight: bold; }
        .risk-high { color: red; font-weight: bold; }

        /* Buttons */
        .buttons {
            margin-top: 25px;
        }

        .buttons button {
            padding: 10px 18px;
            margin-right: 10px;
            border: none;
            border-radius: 5px;
            background-color: #1abc9c;
            color: white;
            cursor: pointer;
            font-size: 14px;
        }

        .buttons button:hover {
            background-color: #16a085;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Edu Pulse</h2>
        <a href="dashboard.html">Dashboard</a>
        <a href="performance.html">Performance</a>
        <a href="advisory.html">Advisory</a>
        <a href="../login.html">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main">

        <div class="navbar">
            <h2>Student Dashboard</h2>
            <div>Welcome, Rithesh 👋</div>
        </div>

        <!-- Profile Section -->
        <div class="profile-card">
            <h3>Student Profile</h3>
            <div class="profile-details">
                <p><strong>Name:</strong> Ch Rithesh</p>
                <p><strong>Roll No:</strong> 24EG105H63</p>
                <p><strong>Department:</strong> Computer Science Engineering</p>
                <p><strong>Year:</strong> 2nd Year</p>
                <p><strong>Semester:</strong> 4</p>
                <p><strong>Email:</strong> rithesh@college.edu</p>
            </div>
        </div>

        <!-- Performance Cards -->
        <div class="cards">

            <div class="card">
                <h3>Overall Performance</h3>
                <p class="highlight">72%</p>
                <p>CGPA Equivalent: 7.4</p>
            </div>

            <div class="card">
                <h3>Attendance</h3>
                <p class="highlight">65%</p>
                <p>Status: Below Required (75%)</p>
            </div>

            <div class="card">
                <h3>Risk Level</h3>
                <p class="risk-medium">Medium</p>
                <p>Needs Academic Attention</p>
            </div>

            <div class="card">
                <h3>Weak Subject</h3>
                <p>Database Management Systems</p>
                <p>Score: 34/50</p>
            </div>

        </div>

        <!-- Buttons -->
        <div class="buttons">
            <button onclick="window.location.href='performance.html'">
                View Detailed Performance
            </button>

            <button onclick="window.location.href='advisory.html'">
                View Learning Advisory
            </button>
        </div>

    </div>

</body>
</html>