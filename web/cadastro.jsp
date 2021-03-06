<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Cadastro</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    
    <body style="background-image:url('fundo.png');" >
        <!-- Barra de navegação principal -->
        <ol class="breadcrumb">
            <li><a href="indexBS.html">Home</a></li>
            <li class="active">Cadastar</li>
            <li><a href="manutencao.jsp">Pesquisa</a></li>
            <li><a href="informacoes.jsp">Sobre</a></li>
        </ol>    
        <div class="container-fluid">
        <!-- linha1 -->
            <div class="row">                   
        <!-- coluna1: -->
                <div class="col-md-7" style="position: absolute; left: 20%; right: 20%; top: 15%;">       
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Cadastrar</h3>
                        </div>
                        <div class="panel-body">
                            <form method="POST" action="servletProcess" class="form-horizontal">
                                <div class="form-group">
                                  <label for="id" class="col-sm-2 control-label">ID</label>
                                  <div class="col-sm-2">
                                    <input type="text" name="id" class="form-control" id="id" placeholder="ID">
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label for="nome" class="col-sm-2 control-label">Nome</label>
                                  <div class="col-sm-10">
                                    <input type="text" name="nome" class="form-control" id="nome" placeholder="Nome">
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label for="telefone" class="col-sm-2 control-label">Telefone</label>
                                  <div class="col-sm-5">
                                      <input type="text" name="fone" class="form-control" id="telefone" placeholder="Telefone">
                                  </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <label class="radio-inline">
                                            <input type="radio" name="sexo" id="masculino" value="masculino">
                                            Masculino
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="sexo" id="feminino" value="feminino">
                                            Feminino
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                  <label for="renda" class="col-sm-2 control-label">Renda</label>
                                  <div class="col-sm-5">
                                      <input type="text" name="renda" class="form-control" id="renda" placeholder="Renda">
                                  </div>
                                </div>
                                <div class="form-group">
                                  <div class="col-sm-offset-2 col-sm-10">
                                      <input type="submit" name="formulario" class="btn btn-success" value="Salvar"/>
                                  </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar-fixed-bottom">
            <div>${resposta}</div>
        </nav>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
