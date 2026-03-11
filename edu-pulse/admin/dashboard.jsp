<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Edu Pulse</title>
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
            color: #fff;
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
            color: #fff;
            text-decoration: none;
            font-size: 15px;
        }

        .sidebar a:hover {
            background-color: #34495e;
        }

        /* Main Content */
        .main {
            flex: 1;
            padding: 25px;
        }

        .main h2 {
            margin-bottom: 20px;
            color: #333;
        }

        /* Cards */
        .card-container {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .card {
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            width: 220px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            text-align: center;
        }

        .card h3 {
            margin-bottom: 10px;
            color: #555;
            font-size: 16px;
        }

        .card p {
            font-size: 26px;
            font-weight: bold;
            color: #2c3e50;
        }

        /* Button */
        .btn {
            margin-top: 30px;
            padding: 12px 20px;
            background-color: #1abc9c;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 15px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #16a085;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <h2>Edu Pulse</h2>
    <a href="dashboard.html">Dashboard</a>
    <a href="manage-users.html">Manage Users</a>
    <a href="../login.html">Logout</a>
</div>

<div class="main">
    <h2>Admin Control Panel</h2>

    <div class="card-container">
        <div class="card">
            <h3>Total Students</h3>
            <p>240</p>
        </div>

        <div class="card">
            <h3>Total Faculty</h3>
            <p>18</p>
        </div>

        <div class="card">
            <h3>Departments</h3>
            <p>4</p>
        </div>
    </div>

    <button class="btn" onclick="window.location.href='manage-users.html'">
        Add / Manage Users
    </button>
</div>

</body>
</html>