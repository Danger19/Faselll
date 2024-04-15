<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenido al sistema de almacén</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h2 {
            color: #007bff;
            margin-bottom: 20px;
        }
        h3 {
            color: #0056b3;
            margin-bottom: 20px;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin: 10px;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Bienvenido al sistema de almacén</h2>
    <h3>Seleccione una opción:</h3>
    <a href="login.jsp"><button class="button">Iniciar Sesión</button></a>
    <a href="llave.jsp"><button class="button">Dar de alta nuevo usuario</button></a>
</body>
</html>

