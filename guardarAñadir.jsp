<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Guardar Añadir</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; 
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        p {
            color: #333; 
            font-size: 18px;
            margin-bottom: 20px;
        }
        a.button {
            background-color: #007bff; 
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        a.button:hover {
            background-color: #0056b3; 
        }
    </style>
</head>
<body>
    <%
        String nombre = request.getParameter("nombre");
        String caducidad = request.getParameter("caducidad");
        String gramajeParam = request.getParameter("gramaje");
        String ubicacion = request.getParameter("ubicacion");
        String cantidadParam = request.getParameter("cantidad");

        int gramaje = Integer.parseInt(gramajeParam);
        int cantidad = Integer.parseInt(cantidadParam);

        String datosRegistro = nombre + "," + caducidad + "," + gramaje + "," + ubicacion + "," + cantidad;
        String rutaArchivo = "Ingrese ruta de archivo aquí";

        try {
            java.nio.file.Files.write(java.nio.file.Paths.get(rutaArchivo), java.util.Arrays.asList(datosRegistro), java.nio.file.StandardOpenOption.CREATE, java.nio.file.StandardOpenOption.APPEND);
    %>
            <p>Medicamento añadido exitosamente.</p>
    <%
        } catch (java.io.IOException e) {
    %>
            <p>Error al guardar el medicamento: <%= e.getMessage() %></p>
    <%
        }
    %>
    <a href="mando.jsp" class="button">Volver al menú principal</a>
</body>
</html>
