
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
    
    <title>Controle de Clientes</title>
    
    <link href="styles.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    </head>
    
    <body style="background-image:url('fundo.png');" >
      
      
             
    <!-- Desing fluido -->
    <div class="container-fluid" >
        
        <!-- Barra de navegação principal -->
        <div class="row" >
            <ol class="breadcrumb">
                <li><a href="indexBS.html">Home</a></li>
                <li><a href="cadastro.jsp">Cadastrar</a></li>
                <li class="active">Outras Operações</li>
                <li><a href="informacoes.jsp">Sobre</a></li>
            </ol>
        </div>           
        
        <!-- linha principal -->   
        <div class="row" >                   
            <div class="col-md-7" style="position: absolute; left: 20%; right: 20%; top: 25%;">
                
                <!-- painel Principal -->
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Manutenção</h3>
                    </div>
                    <div class="panel-body">
                            
                        <form method="POST" action="servletProcess" class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" name="id" placeholder="ID">
                            </div>
                            <input type="submit" name="formulario" value="Alterar" class="btn btn-success"/>
                            <input type="submit" name="formulario" value="Excluir" class="btn btn-danger"/>
                            <input type="submit" name="formulario" value="Exibir Tudo" class="btn btn-primary"/>
                            <input type="submit" name="formulario" value="Buscar" class="btn btn-primary"/>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div>${resposta}</div>
    
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>