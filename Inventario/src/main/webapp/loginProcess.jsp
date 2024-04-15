<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%
    
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    
    boolean autenticado = false;
    BufferedReader reader = null;
    try {
        reader = new BufferedReader(new FileReader("C:\\Users\\danie\\eclipse-workspace\\IMC2\\src\\main\\registros.txt"));
        String line;
        while ((line = reader.readLine()) != null) {
            String[] partes = line.split(",");
            if (partes.length >= 2 && partes[0].equals(username) && partes[1].equals(password)) {
                autenticado = true;
                break;
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

    if (autenticado) {
        
        session.setAttribute("username", username);
        
        response.sendRedirect("mando.jsp");
    } else {
       
        response.sendRedirect("login.jsp?error=1");
    }
%>
