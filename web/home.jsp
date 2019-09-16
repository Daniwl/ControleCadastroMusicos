<%-- 
    Document   : home
    Created on : 13/09/2019, 00:54:26
    Author     : T-Gamer
--%>

<%@page import="br.com.grupo2.Musicas"%>
<%@page import="br.com.grupo2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div align="center"> 
           <h3><a href="adicionarBanda.jsp">Adicionar Bandas</a></h3>
           <h3><a href="adicionarMusicas.jsp">Adicionar Musicas</a></h3>
           
        <h1><b>Cadastro de Bandas</b></h1>
        <br>
        
        <h2>A aplicação é resposável por cadastrar bandas</h2>
        <br>
        <br>
        
        <table border="1">
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
        
        <hr>
        <footer>
        <h2><b>Integrantes</b></h2>
        <h3>Daniel Ribeiro</h3>
        <h3>Felipe Oliveira</h3>
        <h3>Natalia Rodrigues</h3><br>
        </footer>
       
        
       
         </div>
    </body>
</html>
