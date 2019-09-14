<%-- 
    Document   : discos
    Created on : 13/09/2019, 00:56:51
    Author     : T-Gamer
--%>
<%@page import="br.com.grupo2.bandas.Bandas"%>
<%@page import="br.com.grupo2.bandas.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discos/Albuns</title>
    </head>
    <body>
        <div align="center">
        <h1>Página da Discos/Albuns</h1>
         <table border = "1">
            <tr>
                <th>Índice</th>
                <th>Musico/Banda</th>
                <th>Disco/Album</th>
                <th>Musicas</th>
                <th>Comandos</th>
            </tr>
            <%for(Bandas c: Db.getBandas()){%>
            <tr>
                <td><%= Db.getBandas().indexOf(c) %></td>
                <td><%= c.getMusico() %></td>
                <td><%= c.getDisco() %></td>
                <td><%= c.getMusica() %></td>
                <td>
                    <h3><a href="alterar.jsp?index=<%=Db.getBandas().indexOf(c)%>">Alterar</a></h3>
                    <h3><a href="excluir.jsp?index=<%=Db.getBandas().indexOf(c)%>">Excluir</a></h3>
                </td>
            </tr>
            <%}%>
        </table>
        <h3><a href="home.jsp">Retornar</a></h3>
        </div>
    </body>
</html>
