<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clave de Autorización</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
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
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Ingrese la Clave de Autorización</h2>
        <form action="llave.jsp" method="post">
            <input type="password" name="clave" required><br>
            <input type="submit" class="button" value="Iniciar">
        </form>
        <% 
            String clave = request.getParameter("clave");
            if (clave != null && clave.equals("1234")) {
                response.sendRedirect("registro.jsp");
            } else if (clave != null) {
        %>
                <p>Clave incorrecta, solo el administrador puede registrar nuevos usuarios.</p>
        <% } %>
    </div>
</body>
</html>
