<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 50%;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .input-group {
            margin-bottom: 10px;
        }
        .input-group label {
            display: block;
        }
        .input-group input,
        .input-group select {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .button {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registro</h2>
        <form action="guardarRegistro.jsp" method="post">
            <div class="input-group">
                <label for="username">Nombre de Usuario:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-group">
                <label for="fullname">Nombre Completo:</label>
                <input type="text" id="fullname" name="fullname" required>
            </div>
            <div class="input-group">
                <label for="id">ID:</label>
                <input type="text" id="id" name="id" required>
            </div>
            <div class="input-group">
                <label for="position">Puesto en Almacén:</label>
                <input type="text" id="position" name="position" required>
            </div>
            <div class="input-group">
                <label for="year">Año de Ingreso al Hospital:</label>
                <input type="text" id="year" name="year" required>
            </div>
            <div class="input-group">
                <label for="age">Edad:</label>
                <input type="number" id="age" name="age" min="15" required>
            </div>
            <div class="input-group">
                <label for="gender">Sexo:</label>
                <select id="gender" name="gender" required>
                    <option value="M">Masculino</option>
                    <option value="F">Femenino</option>
                </select>
            </div>
            <button type="submit" class="button">Registrarse</button>
        </form>
    </div>
</body>
</html>

