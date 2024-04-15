<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Informe de Medicamentos</title>
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
            width: 80%;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .title {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
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
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="title">Informe de Medicamentos</h2>
    <table>
        <thead>
            <tr>
                <th>Medicamento</th>
                <th>Caducidad</th>
                <th>Gramaje</th>
                <th>Ubicación</th>
                <th>Cantidad disponible</th>
            </tr>
        </thead>
        <tbody>
            <%
                String rutaArchivo = "Ruta aquí";
                File archivo = new File(rutaArchivo);
                List<String> medicamentos = new ArrayList<>();
                BufferedReader reader = null;
                try {
                    reader = new BufferedReader(new FileReader(archivo));
                    String linea;
                    while ((linea = reader.readLine()) != null) {
                        medicamentos.add(linea);
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

                Collections.sort(medicamentos);

                for (String medicamento : medicamentos) {
                    String[] partes = medicamento.split(",");
                    if (partes.length >= 6) { 
            %>
                    <tr>
                        <td> <%= partes[0].trim() %></td>
                        <td><%= partes[1].trim() %></td>
                        <td> <%= partes[2].trim() %></td>
                        <td> <%= partes[3].trim() %> - <%= partes[4].trim() %></td>
                        <td> <%= partes[5].trim() %></td>
                    </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
    <div class="button-container">
        <a href="mando.jsp" class="button">Volver a la página principal</a>
    </div>
</div>
</body>
</html>
