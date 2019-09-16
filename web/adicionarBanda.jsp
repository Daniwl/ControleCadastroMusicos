<%-- 
    Document   : incluir
    Created on : 14/09/2019, 09:38:41
    Author     : natal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.grupo2.Bandas"%>
<%@page import="br.com.grupo2.Db"%>
<!DOCTYPE html>

<%----- Verificação -----%>

<%
    if (request.getParameter("cancel") != null) {
        response.sendRedirect("home.jsp");
    } 
    
    if (request.getParameter("add") != null) {
        String banda = request.getParameter("banda");
        Bandas b = new Bandas(banda);
        Db.getCadastroBanda().add(b);
        response.sendRedirect("home.jsp");
    }
%>

<%----- Formulário -----%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir</title>
    </head>
    <body>
        <h1 style="text-align: center">Adicionar Nova Banda</h1><br>
        
        <form>
            <h1 style="text-align: center">Nome da banda:</h1><br>
            <input type="text" name="banda"/><br><br>
            <input type="submit" name="add" value="Adicionar">
            <input type="submit" name="cancel" value="Cancelar">
        </form>
    </body>
</html>
