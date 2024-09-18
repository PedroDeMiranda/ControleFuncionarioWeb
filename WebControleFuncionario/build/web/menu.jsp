<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Menu de Controle de Funcionários</title>
  <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
  <link rel="stylesheet" href="estilos/style.css">
 
</head>
<body>
<!-- partial:index.partial.html -->
<header>
     <%
        String email = (String) session.getAttribute("usuario");
        if (email == null){
            response.sendRedirect("usuarioNaoLogado.html");
        }
    %>
    <nav class="navbar navbar-expand navbar-dark bg-primary">
        <div class="container-fluid">
            <a href="#menu-toggle" id="menu-toggle" class="navbar-brand"><span class="navbar-toggler-icon"></span></a>   
            <div class="sidebar-brand"> <a href="#"> Start Bootstrap </a> </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExample02">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"> <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item"> <a class="nav-link" href="#">Link</a> </li>
                </ul>
                <form class="form-inline my-2 my-md-0"> </form>
            </div>
        </div>
    </nav>
</header>
<div id="wrapper" class="toggled">
    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <!-- <li class="sidebar-brand"> <a href="#"> Start Bootstrap </a> </li> -->
             <li> <a href="#">Dashboard</a> </li>
            <li> <a href="Departamento/telaLerDepartamento.html">Departamento</a> </li>
            <li> <a href="Funcionario/telaLerFuncionario.html">Funcionários</a></li>
            <li> <a href="#">Sobre</a> </li>
            <li> <a href="#">Serviços</a> </li>
            <li> <a href="#">Contato</a> </li>
            
        </ul>
    </div> <!-- /#sidebar-wrapper -->
    <!-- Page Content -->
    <div id="page-content-wrapper">
        
          
            <h2 class="mt-4">Sistema de Controle de Funcionários</h2>
            <p>Utilize o menu ao lado para gerenciar departamentos, funcionários e acessar outras funcionalidades do sistema.</p>
            
            <!-- Exemplo de conteúdo adicional -->
            
                    <br>
                    <h4>Departamentos</h4>
                    <p>Gerencie os departamentos da empresa.</p>
                    <a href="Departamento/telaLerDepartamento.html" class="btn btn-primary">Veja os Departamentos</a>
                    <br>
                    <hr>
                    <br>
                    <h4>Funcionários</h4>
                    <p>Visualize e edite informações dos funcionários.</p>
                    <a href="Funcionario/telaLerFuncionario.html" class="btn btn-secondary">Funcionários</a>
           

<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js'></script>
<script  src="scripts/script.js"></script>

</body>
</html>
