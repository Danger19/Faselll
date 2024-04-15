<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.List, java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eliminar Registro</title>
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
        h2 {
            color: #007bff;
            margin-bottom: 20px;
        }
        p {
            color: #6c757d;
            font-size: 18px;
            margin-bottom: 20px;
        }
        a.button {
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
        a.button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<%
    
    String medicamentoAEliminar = request.getParameter("medicamento");
    String rutaArchivo = "Ruta de archivo aquí";
    File archivo = new File(rutaArchivo);
    
    
    List<String> nuevosMedicamentos = new ArrayList<>();

    
    BufferedReader reader = null;
    try {
        reader = new BufferedReader(new FileReader(archivo));
        String linea;
        while ((linea = reader.readLine()) != null) {
            String nombre = linea.split(",")[0].trim(); 
           
            if (!nombre.equals(medicamentoAEliminar)) {
                nuevosMedicamentos.add(linea);
            }
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
    }

    
    BufferedWriter writer = null;
    try {
        writer = new BufferedWriter(new FileWriter(archivo));
        for (String medicamento : nuevosMedicamentos) {
            writer.write(medicamento);
            writer.newLine();
        }
    } catch (IOException e) {
        e.printStackTrace();
    } finally {
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
        <h2>Medicamento eliminado con éxito</h2>
        <p>El medicamento <%= medicamentoAEliminar %> ha sido eliminado del registro.</p>
        <a href="mando.jsp" class="button">Volver a la página principal</a>
    </div>
</body>
</html>
