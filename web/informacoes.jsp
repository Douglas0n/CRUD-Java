<!DOCTYPE html>
<html lang="en">
    <head>
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
        <li><a href="manutencao.jsp">Outras Operacoes</a></li>
        <li class="active">Sobre</li>
        
    </ol>
      
             
    <!-- Desing fluido -->
    <div class="container-fluid" >
    <!-- linha1 -->
        <div class="row" >                   
    <!-- coluna1: -->            
    <div class="col-md-7" style="position: absolute; left: 20%; right: 20%; top: 25%;">
                
                <div class="panel panel-primary">
                    
                    <div class="panel-heading">
                        <h3 class="panel-title" style="text-align: center;">Controle de Clientes - CRUD</h3>
                    </div>
                    <div class="panel-body">
                        <p style="text-align: center;">
                        Tecnologia: JSP, JSTL e Bootstrap 3.3.7 <br/><br/>
                        Banco de dados: Derby clientedb <br/><br/>
                        Tabela: cliente <br/><br/>
                        Porta: 1527</p>
                    </div>
            </div>
        </div>    
    </div>
    
    <nav class="navbar navbar-default navbar-fixed-bottom">
        <div class="container"> </br>
            <center>
            Banco de dados: Derby clientedb | Tabela: cliente | Porta: 1527
            </center>
        </div>
    </nav>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>