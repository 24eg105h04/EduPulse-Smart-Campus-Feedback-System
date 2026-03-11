<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Faculty Dashboard - Edu Pulse</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Chart.js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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
            background: white;
            padding: 12px 20px;
            border-radius: 6px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
            margin-bottom: 25px;
            display: flex;
            justify-content: space-between;
        }

        /* Summary Boxes */
        .summary {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
        }

        .box {
            flex: 1;
            background: white;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
        }

        .box h3 {
            margin-bottom: 10px;
            font-size: 16px;
            color: #555;
        }

        .box p {
            font-size: 24px;
            font-weight: bold;
            margin: 0;
        }

        /* Chart Section */
        .chart-box {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
        }

        canvas {
            max-height: 300px;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Edu Pulse</h2>
        <a href="dashboard.html">Dashboard</a>
        <a href="data-entry.html">Enter Marks</a>
        <a href="../login.html">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main">

        <div class="navbar">
            <h2>Faculty Dashboard</h2>
            <div>Welcome, Prof. Sharma 👋</div>
        </div>

        <!-- Summary -->
        <div class="summary">
            <div class="box">
                <h3>Total Students</h3>
                <p>60</p>
            </div>

            <div class="box">
                <h3>Class Average</h3>
                <p>72%</p>
            </div>
        </div>

        <!-- Average Marks Chart -->
        <div class="chart-box">
            <h3>Average Marks by Subject</h3>
            <canvas id="avgMarksChart"></canvas>
        </div>

    </div>

    <script>
        new Chart(document.getElementById("avgMarksChart"), {
            type: 'bar',
            data: {
                labels: ['DBMS', 'DSA', 'OS', 'CN'],
                datasets: [{
                    label: 'Average Marks',
                    data: [70, 75, 68, 80],
                    backgroundColor: '#3498db'
                }]
            },
            options: {
                plugins: {
                    legend: { display: false }
                }
            }
        });
    </script>

</body>
</html>