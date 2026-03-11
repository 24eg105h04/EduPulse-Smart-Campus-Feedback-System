<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edu Pulse - Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4e73df, #1cc88a);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: white;
            padding: 40px;
            width: 350px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 10px;
            color: #333;
        }

        .login-container p {
            margin-bottom: 25px;
            color: #777;
            font-size: 14px;
        }

        .login-container input,
        .login-container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .login-container button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #4e73df;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .login-container button:hover {
            background-color: #2e59d9;
        }

        .logo {
            font-size: 22px;
            font-weight: bold;
            color: #4e73df;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <div class="logo">Edu Pulse</div>
        <h2>Login</h2>
        <p>Smart Student Performance System</p>
<form action="login" method="post">

    <input type="text" name="email" placeholder="Email" required>

    <input type="password" name="password" placeholder="Password" required>

    <select name="role" required>
        <option value="student">Student</option>
        <option value="faculty">Faculty</option>
        <option value="admin">Admin</option>
    </select>

    <button type="submit">Login</button>

</form>
    </div>


</body>
</html>
