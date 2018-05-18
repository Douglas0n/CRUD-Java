<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="recursos.Cliente" %>
<%@page import="recursos.servletProcess" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Controle de Clientes</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    
    <body style="background-image:url('fundo.png');" >
      <!-- Barra de navegação principal -->
    <ol class="breadcrumb">
        <li><a href="indexBS.html">Home</a></li>
        <li><a href="cadastro.jsp">Cadastrar</a></li>
        <li><a href="manutencao.jsp">Pesquisa</a></li>
        <li><a href="informacoes.jsp">Sobre</a></li>    
    </ol>
    <!-- Desing fluido -->
    <div class="container-fluid" >
    <!-- linha1 -->
        <div class="row" >                   
            <!-- coluna1: -->            
            <div class="col-md-7" style="position: absolute; left: 20%; right: 20%; top: 15%;">    
                <div class="panel panel-primary">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Consulta</div>
                    <div class="panel-body">
                        <!-- Table -->
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                    <th>Sexo</th>
                                    <th>Renda</th>
                                </tr>
                                <br/>
                                <c:forEach var="consulta" items="${resultado}">
                                    <tr>
                                        <th>${consulta.id}</th>
                                        <th>${consulta.nome}</th>
                                        <th>${consulta.telefone}</th>
                                        <th>${consulta.sexo}</th>
                                        <th>${consulta.renda}</th>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
