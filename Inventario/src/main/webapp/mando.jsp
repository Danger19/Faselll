<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema de Almacén</title>
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
            color: #333;
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
    <h2>Sistema de Almacén</h2>
    <a href="añadir.jsp"><button class="button">Añadir Medicamento</button></a>
    <a href="eliminar.jsp"><button class="button">Eliminar Medicamento</button></a>
    <a href="actualizar.jsp"><button class="button">Actualizar existencias</button></a>
    <a href="informes.jsp"><button class="button">Generar informes</button></a>
</body>
</html>

