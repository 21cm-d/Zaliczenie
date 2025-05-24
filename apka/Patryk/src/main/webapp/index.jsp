<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Aplikacja do przepisów kulinarnych</title>
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

        .sidebar button {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
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
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="sidebar">
        <% if(session.getAttribute("user")==null){%>
            <form action="register.jsp" method="get">
                <button type="submit">Zarejestruj się</button>
            </form>
        <%}%>
            <form action="register.jsp" method="get">
                <button type="submit">Wyświetla Przepisy</button>
            </form>
        <% if(session.getAttribute("user")!=null){%>
            <form action="addRecipe.jsp" method="get">
                <button type="submit">Dodaj Przepis</button>
            </form>
            <form action="logout" method="get">
                <button type="submit">Wyloguj się</button>
            </form>
        <%}%>
    </div>

    <div class="main-content">
        <h1>Witamy na stronie!</h1>
        <% if(session.getAttribute("user")!=null){%>
        <h2>${user.name} witaj w naszej aplikacji!</h2>
        <%}%>

        <p>Wykonali Patryk Guziejko, Maciek Bednarczyk.</p>

        <% if(session.getAttribute("user")==null){%>
            <h1>Nie Zalogowany!</h1>
        <%}%>

    </div>
</div>
</body>
</html>
