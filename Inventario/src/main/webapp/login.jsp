<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; 
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h2 {
            color: #343a40; 
            margin-bottom: 20px;
        }
        form {
            background-color: #ffffff; 
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 300px;
            margin: 0 auto;
        }
        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ced4da; 
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff; 
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3; 
        }
    </style>
</head>
<body>
    <h2>Iniciar Sesión</h2>
    <form action="loginProcess.jsp" method="post">
        Nombre de Usuario: <input type="text" name="username" required><br>
        Contraseña: <input type="password" name="password" required><br>
        <input type="submit" value="Iniciar Sesión">
    </form>
</body>
</html>
