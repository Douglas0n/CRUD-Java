<%-- 
    Document   : manutencao
    Created on : 08/12/2017, 21:57:21
    Author     : Douglas-ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="recursos.Cliente" %>
<%@page import="recursos.servletProcess" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet">
        <title>Manutenção de cadastros</title>
    </head>
    <body>
        <h1>Manutenção de cadastros</h1>
        </br></br>
        <center>
            <fieldset id="manutencao">
                <fieldset id="exibicao">
                    <legend>Dados do Cliente</legend>
                    <%-- Tabela de exibição--%>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Telefone</th>
                            <th>Sexo</th>
                            <th>Renda</th>
                        </tr>
                        <br/>
                        <tr>
                            <th>${id}</th>
                            <th>${nome}</th>
                            <th>${telefone}</th>
                            <th>${sexo}</th>
                            <th>${renda}</th>
                        </tr>
                    </table>     
                </fieldset> <br/>
                <a href="index.html"><button id="Form">Voltar</button></a>
            </fieldset>
        </center>
    </body>
</html>



