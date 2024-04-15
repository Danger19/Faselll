<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eliminar Medicamento</title>
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
            background-color: #dc3545; 
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
        }
        .button:hover {
            background-color: #c82333; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="title">Eliminar Medicamento</h2>
        <form action="eliminarRegistro.jsp" method="post">
            <div class="input-group">
                <label for="medicamento">Selecciona un medicamento:</label>
                <select id="medicamento" name="medicamento">
                    <% 
                        String rutaArchivo = "Ruta de archivo aquí";
                        BufferedReader reader = null;
                        try {
                            reader = new BufferedReader(new FileReader(rutaArchivo));
                            String line;
                            while ((line = reader.readLine()) != null) {
                                
                    %>
                                <option value="<%= line.split(",")[0] %>"><%= line.split(",")[0] %></option>
                    <%
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
                    %>
                </select>
            </div>
            <button type="submit" class="button">Eliminar Registro</button>
        </form>
    </div>
</body>
</html>
