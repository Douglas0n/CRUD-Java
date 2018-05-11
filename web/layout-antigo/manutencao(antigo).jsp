<%-- 
    Document   : manutencao
    Created on : 08/12/2017, 21:57:21
    Author     : Douglas-ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <fieldset id="operacoes">
                    <legend>Operações</legend> <br/>
                    <div>
                        <%-- Formulario de busca--%>
                        <form method="POST" action="servletProcess">
                            <input id="operacoes" type="text" name="id" />
                            <input id="Form" type="submit" name="formulario" value="Buscar" />
                            <input id="Form" type="submit" name="formulario" value="Excluir" />
                            <input id="Form" type="submit" name="formulario" value="Exibir_tudo" />
                            <input id="Form" type="submit" name="formulario" value="Alterar" />
                        </form> 
                    </div>
                </fieldset> <br/>
                <a href="index.html"><button id="Form">Voltar</button></a>
                </br></br></br></br>
                <p>Insira o ID no campo e pressione a opção.</p>
            </fieldset>
        </center>
    </body>
</html>
