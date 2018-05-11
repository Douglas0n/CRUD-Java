<%-- 
    Document   : cadastro
    Created on : 06/12/2017, 09:57:41
    Author     : Douglas-ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet">
        <title>Cadastro</title>
    </head>
    <body>
        <h1>Cadastro de Clientes</h1> 
        </br></br>
            <center>
                <fieldset> <br/>
                    <fieldset id="dados"> 
                        <legend>Informação</legend>
                        <div class="Formulario"> <br/>
                            <p style="text-align: center; font-size: 40px" >${resposta}</p>        
                        </div>
                    </fieldset>
                    <br/>        
                    <center>
                        <%-- Botão para voltar a página inicial --%>
                        <a href="index.html"> <button id="Form">Voltar</button> </a>
                    </center>
                </fieldset>
            </center>
    </body>
</html>
