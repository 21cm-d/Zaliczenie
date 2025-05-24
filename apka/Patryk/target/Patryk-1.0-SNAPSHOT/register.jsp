<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Rejestracja</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            height: 100vh;
        }

        .sidebar {
            width: 200px;
            background-color: #f8f8f8;
            padding: 20px;
            border-right: 1px solid #ddd;
        }

        .sidebar form {
            margin-bottom: 10px;
        }

        .sidebar button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        .sidebar button:hover {
            background-color: #45a049;
        }

        .main-content {
            flex: 1;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f4f4f4;
        }

        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        h2 {
            text-align: center;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="sidebar">
        <form action="index.jsp" method="get">
            <button type="submit">Strona główna</button>
        </form>
    </div>

    <div class="main-content">
        <div class="form-container">
            <h2>Rejestracja</h2>
            <form action="register">
                Wpisz login: <input type="text" name="login"/>
                Wpisz hasło: <input type="password" name="haslo"/>
                Wpisz imię: <input type="text" name="imie"/>
                Wpisz nazwisko: <input type="text" name="nazwisko"/>
                <input type="submit" value="Wyślij">
            </form>
        </div>
    </div>
</div>

</body>
</html>
