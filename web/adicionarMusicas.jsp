
<%@page import="br.com.grupo2.Db"%>
<%@page import="br.com.grupo2.Musicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(request.getParameter("cancel") != null) {
        response.sendRedirect("home.jsp");   
    }if(request.getParameter("add") != null){
        String nomeMusica = request.getParameter("nomeMusica");
        String nomeBanda = request.getParameter("nomeBanda");
        String duracao = request.getParameter("duracao");
        Musicas musica = new Musicas(nomeMusica, nomeBanda, duracao);
        Db.getMusica().add(musica);
        response.sendRedirect("home.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        
        <div align="center">
        <h1>Formulário para registros da Musica:</h1>
        <form>
            Nome da musica:<br/>
            <input placeholder="Inserir o nome da musica:" type="text" name="nomeMusica"/> <br/>
            
            Nome da banda:<br/>
            <input placeholder="Inserir o nome da banda" type="text" name="nomeBanda"/> <br/>
            Duração:<br/>
            <input placeholder="Inserir a duração da musica:"type="time" name="duracao"/> <br/> <br/>
            <input type="submit" name="add" value="Adicionar"/>
            <input type="submit" name="cancel" value="Cancelar"/>
        </form>
        </div>
        
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
