<%-- 
    Document   : listarDepartamento
    Created on : 12 de set. de 2024, 07:47:45
    Author     : pedro_miranda-neto
--%>

<%@page import="java.util.List"%>
<%@page import="controlefuncionario.Departamento"%>
<%       
   //istancio a classe      
   Departamento dep = new Departamento();
   //Crio a ArrayList que é armazenada com todos departamentos
   List<Departamento> departamentos = dep.listarDeptos();
   
%>


//tela de menu exibindo a lista dos departamentos
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Bootstrap 4 sidebad collapsable sidebar responsive menu</title>
  <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
  <link rel="stylesheet" href="estilos/style.css">
  <style>
      /* Reset básico */
body, h1, h2, p, form, table, input, button {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Estilo do corpo */
body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    color: #333;
}

/* Estilo do cabeçalho */
header {
    background-color: #343a40;
    color: #ffffff;
}

.navbar {
    padding: 0.5rem 1rem;
}

.navbar-brand {
    font-weight: bold;
}

.navbar-nav .nav-link {
    color: #ffffff !important;
}

.navbar-nav .nav-link:hover {
    color: #adb5bd !important;
}

/* Estilo da barra lateral */
#sidebar-wrapper {
    background-color: #343a40;
    color: #ffffff;
    height: 100vh;
    width: 250px;
    position: fixed;
    top: 0;
    left: 0;
    overflow-y: auto;
}

.sidebar-nav {
    padding: 1rem 0;
}

.sidebar-nav li {
    padding: 0.5rem 1rem;
}

.sidebar-nav li a {
    color: #ffffff;
    text-decoration: none;
}

.sidebar-nav li a:hover {
    background-color: #495057;
    border-radius: 4px;
}

/* Estilo do conteúdo da página */
#page-content-wrapper {
    margin-left: 250px;
    padding: 2rem;
}

h1, h2 {
    color: #343a40;
}

h1 {
    font-size: 2rem;
    margin-bottom: 1rem;
}

h2 {
    font-size: 1.5rem;
    margin-bottom: 1rem;
}

/* Estilo dos formulários */
form {
    margin-bottom: 2rem;
}

form label {
    display: block;
    margin-bottom: 0.5rem;
}

form input[type="text"],
form input[type="number"] {
    width: 100%;
    padding: 0.5rem;
    margin-bottom: 1rem;
    border: 1px solid #ced4da;
    border-radius: 4px;
}

form input[type="submit"],
form button {
    padding: 0.5rem 1rem;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: #ffffff;
    cursor: pointer;
    font-size: 1rem;
}

form input[type="submit"]:hover,
form button:hover {
    background-color: #0056b3;
}

/* Estilo das tabelas */
table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 2rem;
}

table, th, td {
    border: 1px solid #dee2e6;
}

th, td {
    padding: 0.75rem;
    text-align: left;
}

thead {
    background-color: #343a40;
    color: #ffffff;
}

tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}

  </style>
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

    <!-- Formulário para listar todos os departamentos -->
    <h2>Listar Todos os Departamentos</h2>
    <form action="listarDepartamento.jsp">
        <input type="submit" value="Listar">
    </form>
       
    <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                </tr>
            </thead>
            <tbody>
                <% for (Departamento departamento : departamentos) { %>
                    <tr>
                        <td><%= departamento.getIdDepto()%></td>
                        <td><%= departamento.getDescDepto()%></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    
        </div>
    </div> <!-- /#page-content-wrapper -->
</div> <!-- /#wrapper -->
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js'></script>
<script  src="scripts/script.js"></script>

</body>
</html>
