<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.ArrayList, java.util.List, java.util.Scanner" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Actualizar Medicamento</title>
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
            text-align: center;
        }
        .title {
            color: #333;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: inline-block;
            width: 100px;
            text-align: left;
        }
        select, input[type="number"] {
            width: 200px;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
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
            border-radius: 8px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<%
   
    String rutaArchivo = "Ruta aquí";
    File archivo = new File(rutaArchivo);
    List<String> nombresMedicamentos = new ArrayList<>();
    try (Scanner scanner = new Scanner(archivo)) {
        while (scanner.hasNextLine()) {
            String linea = scanner.nextLine();
            String nombre = linea.split(",")[0].trim();
            nombresMedicamentos.add(nombre);
        }
    } catch (FileNotFoundException e) {
        e.printStackTrace();
    }
%>
<div class="container">
    <h2 class="title">Actualizar Medicamento</h2>
    <form action="actualizarMedicamento.jsp" method="post">
        <div class="form-group">
            <label for="medicamento">Seleccione un medicamento:</label>
            <select name="medicamento" id="medicamento">
                <% for (String nombre : nombresMedicamentos) { %>
                    <option value="<%= nombre %>"><%= nombre %></option>
                <% } %>
            </select>
        </div>
        <div class="form-group">
            <label for="cantidad">Nueva cantidad:</label>
            <input type="number" name="cantidad" id="cantidad" min="0" value="0">
        </div>
        <button type="submit" class="button">Actualizar Cantidad</button>
    </form>
</div>
</body>
</html>
