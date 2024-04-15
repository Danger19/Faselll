<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.List, java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Actualización Exitosa</title>
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
    String medicamento = request.getParameter("medicamento");
    int nuevaCantidad = Integer.parseInt(request.getParameter("cantidad"));
    String rutaArchivo = "Ruta aquí";
    File archivo = new File(rutaArchivo);
    List<String> nuevosMedicamentos = new ArrayList<>();
    BufferedReader reader = null;
    BufferedWriter writer = null;
    try {
        reader = new BufferedReader(new FileReader(archivo));
        String linea;
        while ((linea = reader.readLine()) != null) {
            String nombre = linea.split(",")[0].trim(); 
            if (nombre.equals(medicamento)) {
                String[] partes = linea.split(",");
                partes[5] = String.valueOf(nuevaCantidad);
                linea = String.join(",", partes);
            }
            nuevosMedicamentos.add(linea);
        }
        writer = new BufferedWriter(new FileWriter(archivo));
        for (String medicamentoActualizado : nuevosMedicamentos) {
            writer.write(medicamentoActualizado);
            writer.newLine();
        }
    } catch (IOException e) {
        e.printStackTrace();
    } finally {
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
%>
<div class="container">
    <h2 class="title">Actualización Exitosa</h2>
    <p>Se ha actualizado la cantidad del medicamento <%= medicamento %> a <%= nuevaCantidad %> unidades.</p>
    <a href="mando.jsp" class="button">Volver a la página principal</a>
</div>
</body>
</html>
