<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.nio.file.*, java.nio.charset.*, java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Guardar Registro</title>
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
        .message {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            margin-bottom: 10px;
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
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 8px;
            display: block;
            margin: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <% 
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String nombreCompleto = request.getParameter("fullname");
            String id = request.getParameter("id");
            String puesto = request.getParameter("position");
            String year = request.getParameter("year");
            String edadString = request.getParameter("age");
            String sexo = request.getParameter("gender");

            int edad = 0;
            if (edadString != null && !edadString.isEmpty()) {
                edad = Integer.parseInt(edadString);
                if (edad < 18) {
                    out.println("<div class='message'>Error: Edad menor a 15 años.</div>");
                    return;
                }
            } else {
                out.println("<div class='message'>Error: Edad no especificada.</div>");
                return;
            }

            String datosRegistro = username + "," + password + "," + nombreCompleto + "," + id + "," + puesto + "," + year + "," + edad + "," + sexo;
            String rutaArchivo = "C:\\Users\\danie\\eclipse-workspace\\IMC2\\src\\main\\registros.txt";

            try {
                Files.write(Paths.get(rutaArchivo), Arrays.asList(datosRegistro), StandardCharsets.UTF_8, StandardOpenOption.CREATE, StandardOpenOption.APPEND);
        %>
                <div class="message">Registro guardado exitosamente.</div>
        <% 
            } catch (IOException e) {
        %>
                <div class="message">Error al guardar el registro: <%= e.getMessage() %></div>
        <% 
            }
        %>
        <a href="index.jsp" class="button">Iniciar sesión</a>
    </div>
</body>
</html>
