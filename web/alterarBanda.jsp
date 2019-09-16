<%-- 
    Document   : alterar
    Created on : 14/09/2019, 09:38:20
    Author     : natal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.grupo2.Bandas"%>
<%@page import="br.com.grupo2.Db"%>

<%
    Bandas cadastro = new Bandas(null);
    if (request.getParameter("index") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        cadastro = Db.getCadastroBanda().get(index);
    }
    
    if (request.getParameter("cancel") != null) {
        response.sendRedirect("home.jsp");
    }
    
    if (request.getParameter("set") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        String banda = request.getParameter("nomeBanda");
        Bandas b = new Bandas(banda);
        Db.getCadastroBanda().set(index, b);
        response.sendRedirect("home.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <h1>Alterar Música</h1>
        
        <form style="margin-left: 40%">
            Índice:<br><br> <%= request.getParameter("index") %>
            <input type="hidden" name="index" value="<%= request.getParameter("index")%>"><br><br>
            Banda:<br><br>
            <input type="text" name="nomeBanda" value="<%= cadastro.getBanda()%>"><br><br>
            <input type="submit" name="set" value="Alterar">
            <input type="submit" name="cancel" value="Cancelar">
        </form>
            
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
