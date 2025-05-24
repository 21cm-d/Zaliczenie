<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dodaj Przepis</title>
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
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: flex-start;
        }

        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h2 {
            text-align: center;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin: 8px 0 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        textarea {
            resize: vertical;
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
            <h2>Dodaj Nowy Przepis</h2>
            <form action="addRecipeServlet" method="post">
                <label for="title">Nazwa przepisu:</label>
                <input type="text" id="title" name="title" required>

                <label for="ingredients">Składniki:</label>
                <textarea id="ingredients" name="ingredients" rows="4" required></textarea>

                <label for="instructions">Instrukcje przygotowania:</label>
                <textarea id="instructions" name="instructions" rows="4" required></textarea>

                <label for="cuisine">Rodzaj kuchni:</label>
                <input type="text" id="cuisine" name="cuisine" required>

                <label for="difficulty">Stopień trudności:</label>
                <select id="difficulty" name="difficulty" required>
                    <option value="Łatwy">Łatwy</option>
                    <option value="Średni">Średni</option>
                    <option value="Trudny">Trudny</option>
                </select>

                <input type="submit" value="Dodaj przepis">
            </form>
        </div>
    </div>
</div>

</body>
</html>
