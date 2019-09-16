<%-- 
    Document   : home
    Created on : 13/09/2019, 00:54:26
    Author     : T-Gamer
--%>

<%@page import="br.com.grupo2.Bandas"%>
<%@page import="br.com.grupo2.Musicas"%>
<%@page import="br.com.grupo2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 3</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">
    </head>
    <body>
       <div align="center"> 
           <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
           
        <h1><b>Cadastro de Bandas</b></h1>
        <br>
        
        <h2>A aplicação é resposável por cadastrar bandas, discos e musicas</h2>
        <br>
        <br>
        <table border="1">
            <caption>Tabela da Banda</caption>
            <tr>
                <th>Indice</th>
                <th>Banda</th>
            </tr>
            <% for(Bandas banda: Db.getCadastroBanda()){%>
            <tr>
                <td><%= Db.getCadastroBanda().indexOf(banda) %></td>
                <td><%= banda.getBanda() %></td>
                <td>
                    <a href="alterarBanda.jsp?index=<%=Db.getCadastroBanda().indexOf(banda)%>">Alterar</a>
                    <a href="excluirBanda.jsp?index=<%=Db.getCadastroBanda().indexOf(banda)%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
        <br>
        <table border="1">
                        <caption>Tabela da Musica</caption>
            <tr>
                <th>Indice</th>
                <th>Musica</th>
                <th>Banda</th>
                <th>Duração</th>
            </tr>
            <% for(Musicas musica: Db.getMusica()){%>
            <tr>
                <td><%= Db.getMusica().indexOf(musica) %></td>
                <td><%= musica.getNomeMusica() %></td>
                <td><%= musica.getNomeBanda() %></td>
                <td><%= musica.getDuracaoMusicas() %></td>
                <td>
                    <a href="alterarMusicas.jsp?index=<%=Db.getMusica().indexOf(musica)%>">Alterar</a>
                    <a href="excluirMusicas.jsp?index=<%=Db.getMusica().indexOf(musica)%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
        
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
       
        
       
         </div>
    </body>
</html>
