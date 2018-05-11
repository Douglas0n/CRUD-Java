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
                        <legend>Dados do cliente</legend>
                        <div class="Formulario"> <br/>
                            <form method="POST" action="servletProcess">
                                
                                <%-- Rótulos --%>
                                <label class="lId" >ID:</label> 
                                <label class="lNome" >Nome:</label> <br/> 
                                
                                <%-- campos de texto --%>
                                <input class="fId" type="text" name="id"/>
                                <input class="fNome" type="text" name="nome"/> <br/> <br/>
                                
                                <%-- Rótulos --%>
                                <label class="lFone" >Telefone:</label> 
                                <label class="lSexo" >Sexo:</label> 
                                <label class="lRenda" >Renda:</label> <br/>
                                
                                <%-- Botões radio e seus rótulos --%>
                                <input class="fFone" type="text" name="fone"/>                            
                                <input class="rSexo" type="radio" value="Masculino" name="sexo"/>
                                <label class="Mas">Masculino</label>
                                <input class="rSexo" type="radio" value="Feminino" name="sexo"/>
                                <label class="Fem">Feminino</label>
                                
                                <%-- Campos de texto --%>
                                <input class="fRenda" type="text" name="renda"/> <br/> <br/>
                                
                                <%-- botão que envia o formulário --%>
                                <input id="Form" name="formulario" type="submit" value="Salvar" />                                        
                            </form>
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
