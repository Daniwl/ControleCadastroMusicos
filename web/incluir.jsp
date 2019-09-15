<%-- 
    Document   : inlcuir
    Created on : 14/09/2019, 22:39:49
    Author     : Luisatto
--%>
<%@page import="br.com.grupo2.Bandas"%>
<%@page import="br.com.grupo2.Discos"%>
<%@page import="br.com.grupo2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("cancel") != null) {
        response.sendRedirect("home.jsp");   
    }if(request.getParameter("add") != null){
        String musico = request.getParameter("musico");
        String disco = request.getParameter("disco");
        String musicas = request.getParameter("musica");
        Discos c = new Disco(musico, disco, musicas);
        Db.getBandas().add(c);
        response.sendRedirect("home.jsp");
    }
    
    
   
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar</title>
    </head>
    <body>
        <div align="center">
        <h1>Formulário para registros:</h1>
        <form>
            Músico/Banda:<br/>
            <input placeholder="Insirir Cantor/Banda:" type="text" name="musico"/> <br/>
            
            Discos/Albuns:<br/>
            <input placeholder="Insirir Discos/Albuns:" type="text" name="disco"/> <br/>
            Músicas:<br/>
            <input placeholder="Insirir Música:"type="text" name="musica"/> <br/> <br/>
            <input type="submit" name="add" value="Adicionar"/>
            <input type="submit" name="cancel" value="Cancelar"/>
        </form>
        </div>
    </body>
</html>
