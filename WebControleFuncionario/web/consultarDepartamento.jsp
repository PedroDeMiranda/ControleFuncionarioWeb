<%-- 
    Document   : consultarDepartamento
    Created on : 12 de set. de 2024, 08:24:24
    Author     : pedro_miranda-neto
--%>

<%@page import="controlefuncionario.Departamento"%>
<%
    //crio a variavel id com o valor do input
    int id = Integer.parseInt(request.getParameter("idConsulta"));
    //istancio a classe e dou um set no id
    Departamento dep = new Departamento();
    dep.setIdDepto(id);

    //armazeno a consulta em uma variavel
    Departamento consulta = dep.consultaDepto();

    if (consulta != null) {
    
    } else {
%>
<script type="text/javascript">
    alert('ID do departamento é nulo');
    window.location.href = 'menu.jsp';
</script>
<%}%>

//tela de menu exibindo a variavel consultada
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Bootstrap 4 sidebad collapsable sidebar responsive menu</title>
  <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
  <link rel="stylesheet" href="estilos/style.css">
  
</head>
<body>
<!-- partial:index.partial.html -->
<header>

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
            <li> <a href="telaCriarDepartamento.html">Deparamento</a> </li>
            <li> <a href="#">Sobre</a> </li>
            <li> <a href="#">Serviços</a> </li>
            <li> <a href="#">Contato</a> </li>
            
        </ul>
    </div> <!-- /#sidebar-wrapper -->
    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <h1>Departamentos</h1>
            <p>CRUD do Departamento</p>
            
             <h2>Cadastrar Departamento</h2>
    <form action="criarDepartamento.jsp" >
        <label for="nomeDepartamento">Nome do Departamento:</label>
        <input type="text" id="nomeDepartamento" name="nomeDepartamento" required>

        <input type="submit" value="Cadastrar">
    </form>

    <h2>Alterar Departamento</h2>
    <form action="AlterarDepartamento.jsp" method="post">
        <label for="idAlterar">ID do Departamento:</label>
        <input type="number" id="idAlterar" name="idAlterar" required>

        <label for="nomeNovoDepartamento">Novo Nome do Departamento:</label>
        <input type="text" id="nomeNovoDepartamento" name="nomeNovoDepartamento" required>

        <input type="submit" value="Alterar">
    </form>

    <h2>Excluir Departamento</h2>
    <form action="DeletarDepartamento.jsp">
        <label for="idExcluir">ID do Departamento:</label>
        <input type="number" id="idExcluir" name="idExcluir" required>

        <button type="submit">Excluir</button>
    </form>
    
    
     <h2>Consultar Departamento</h2>
     <form action="consultarDepartamento.jsp">
        <label for="idConsulta">Consultar por ID:</label>
        <input type="number" id="idConsulta" name="idConsulta" placeholder="Digite o ID do Departamento">

        <input type="submit" value="Consultar">
    </form>
     
     <% if (consulta != null) { %>
    <h3>Resultado da Consulta:</h3>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= id %></td>
                <td><%= consulta.getDescDepto()%></td>
            </tr>
        </tbody>
    </table>
<% } else if (consulta == null) { %>
    <script type="text/javascript">
        alert('Departamento não existe');
        window.location.href = 'menu.jsp';
    </script>
<% } %>

    <!-- Formulário para listar todos os departamentos -->
    <h2>Listar Todos os Departamentos</h2>
    <form action="listarDepartamento.jsp">
        <input type="submit" value="Listar">
    </form>
            
        </div>
    </div> <!-- /#page-content-wrapper -->
</div> <!-- /#wrapper -->
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js'></script>
<script  src="scripts/script.js"></script>

</body>
</html>
