<%-- 
    Document   : index
    Created on : 14/09/2019, 09:38:54
    Author     : natal
--%>

<%@page import="br.com.cadastro.Bandas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.cadastro.Db"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        
        <h1 style="text-align: center">Home</h1>  
        <hr>
        <h3><a href="index.jsp">Home</a></h3>
        <h3><a href="adicionarBanda.jsp">Adicionar</a></h3>  
        
<%----- Tabela -----%>    

        <table border="1" style="position: bottom">
            <tr>
                <th>Índice</th>
                <th>Banda</th>
                <th>Comando</th>
            </tr>  
            <tr>

<%----- Pegando valores -----%>

                <%for (Bandas b: Db.getCadastroBanda()) {%>
            
                <td><%= Db.getCadastroBanda().indexOf(b) %></td>
                <td><%= c.getBanda() %></td>
                
<%----- Mais comandos -----%>  

                <td>
                    <a href="alterar.jsp?index=<%= Db.getCadastroBanda().indexOf(b) %>">Alterar</a>
                    <a href="excluir.jsp?index=<%= Db.getCadastroBanda().indexOf(b) %>">Excluir</a>
                </td>
            </tr>
        <% } %>
        </table>
    </body>
</html>
