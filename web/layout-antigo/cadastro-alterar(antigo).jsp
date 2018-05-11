<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet">
        <title>Alteração</title>
    </head>
    <body>
        <h1>Alteração de Dados</h1> 
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
                                <input class="fId" type="text" name="id" value="${id}"/>
                                <input class="fNome" type="text" name="nome" value="${nome}"/> <br/> <br/>
                                
                                <%-- Rótulos --%>
                                <label class="lFone" >Telefone:</label> 
                                <label class="lSexo" >Sexo:</label> 
                                <label class="lRenda" >Renda:</label> <br/>
                                
                                <%-- campo de texto (renda) --%>
                                <input class="fFone" type="text" name="fone" value="${telefone}"/>
                                
                                <%-- Botões radio e seus rótulos --%>
                                
                                <c:choose>
                                    
                                    <c:when test="${sexo} ==masculino">
                                        <input class="rSexo" type="radio" value="Masculino" name="sexo" checked="checked"/>
                                        <label class="Mas">Masculino</label>
                                        <input class="rSexo" type="radio" value="Feminino" name="sexo"/>
                                        <label class="Fem">Feminino</label>        
                                    </c:when>
                                        
                                    <c:when test="${sexo} ==feminino">
                                        <input class="rSexo" type="radio" value="Masculino" name="sexo"/>
                                        <label class="Mas">Masculino</label>
                                        <input class="rSexo" type="radio" value="Feminino" name="sexo" checked="checked"/>
                                        <label class="Fem">Feminino</label>        
                                    </c:when>
                                        
                                    <c:otherwise>
                                        <input class="rSexo" type="radio" value="Masculino" name="sexo"/>
                                        <label class="Mas">Masculino</label>
                                        <input class="rSexo" type="radio" value="Feminino" name="sexo"/>
                                        <label class="Fem">Feminino</label>        
                                    </c:otherwise>
                                        
                                </c:choose>
                                        
                                <%-- Campos de texto --%>
                                <input class="fRenda" type="text" name="renda" value="${renda}"/> <br/> <br/>
                                
                                <%-- botão que envia o formulário --%>
                                <input id="Form" name="formulario" type="submit" value="Atualizar" />                                        
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
