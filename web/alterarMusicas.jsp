
<%@page import="br.com.grupo2.Db"%>
<%@page import="br.com.grupo2.Musicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Musicas musica = new Musicas(null,null,null);
    if(request.getParameter("index") != null){
        int index = Integer.parseInt(request.getParameter("index"));
        musica = Db.getMusica().get(index);
    }
    
    if(request.getParameter("cancel") != null) {
        response.sendRedirect("home.jsp");   
    }if(request.getParameter("set") != null){
        int index = Integer.parseInt(request.getParameter("index"));
        String nomeMusica = request.getParameter("nomeMusica");
        String nomeBanda = request.getParameter("nomeBanda");
        String duracao = request.getParameter("duracao");
        Musicas m = new Musicas(nomeMusica, nomeBanda, duracao);
        Db.getMusica().set(index, m);
        response.sendRedirect("home.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <div align="center">
        <h1>Formulário para alterar a musica:</h1>
        <form>
            Índice:<br/><b><%=request.getParameter("index")%></b><br>
            <input type="hidden" name="index" value="<%=request.getParameter("index")%>"/> <br/>
            Nome da musica:<br/>
            <input type="text" name="nomeMusica" value="<%=musica.getNomeMusica()%>"/> <br/>
            Nome da banda:<br>
            <input type="text" name="nomeBanda" value="<%=musica.getNomeBanda()%>"/> <br/>
            Duração da musica:<br>
            <input type="time" name="duracao" value="<%=musica.getDuracaoMusicas()%>"/> <br>
           
            <input type="submit" name="set" value="Atualizar"/>
            <input type="submit" name="cancel" value="Cancelar"/>
        </form>
        </div>
    </body>
</html>
