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
    window.location.href = 'telaLerDepartamento.html';
</script>
<%}%>
        

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Ler Departamento</title>
  <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
  <link rel="stylesheet" href="../estilos/style.css">
  
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
