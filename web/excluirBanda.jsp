<%-- 
    Document   : excluir
    Created on : 14/09/2019, 09:38:30
    Author     : natal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.grupo2.Bandas"%>
<%@page import="br.com.grupo2.Db"%>
<!DOCTYPE html>

<%
        Bandas cadastro = new Bandas(null);
        if (request.getParameter("index") != null) {
            int index = Integer.parseInt(request.getParameter("index"));
            cadastro = Db.getCadastroBanda().get(index);
        }
        
        if (request.getParameter("cancel") != null) {
            response.sendRedirect("home.jsp");
        }
        
        if (request.getParameter("remove") != null) {
            int index = Integer.parseInt(request.getParameter("index"));
            Db.getCadastroBanda().remove(index);
            response.sendRedirect("home.jsp");
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title>
    </head>
    <body>
        <h1>Excluir música</h1>
        
        <form>
            Índice:<br/><b><%= request.getParameter("index") %><br></b><br/>
            <input type="hidden" name="index" value="<%= request.getParameter("index")%>">
            Banda:<br/><b><%= cadastro.getBanda() %></b><br/><br>
            <input type="submit" name="remove" value="Excluir">
            <input type="submit" name="cancel" value="Cancelar">
            
        </form>
    </body>
</html>
