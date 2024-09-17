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

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Bootstrap 4 sidebad collapsable sidebar responsive menu</title>
  <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
  <link rel="stylesheet" href="estilos/style.css">
  
</head>
<body>
    <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="telaCriarDepartamento.html">Criar</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="telaAlterarDepartamento.html">Alterar</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="telaExcluirDepartamento.html">Excluir</a>
          </li>
        </ul>
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