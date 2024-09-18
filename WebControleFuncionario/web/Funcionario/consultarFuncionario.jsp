<%-- 
    Document   : consultarFuncionario
    Created on : 12 de set. de 2024, 08:24:24
    Author     : pedro_miranda-neto
--%>

<%@page import="controlefuncionario.Funcionario"%>
<%
    //crio a variavel id com o valor do input
    int id = Integer.parseInt(request.getParameter("idConsulta"));
    //istancio a classe e dou um set no id
    Funcionario fun = new Funcionario();
    fun.setIdFunc(id);

    //armazeno a consulta em uma variavel
    Funcionario consulta = fun.consultaFuncionario();

    if (consulta != null) {
    
    } else {
%>
<script type="text/javascript">
    alert('ID do Funcionario é nulo');
    window.location.href = 'telaLerFuncionario.html';
</script>
<%}%>
        

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Ler Funcionario</title>
  <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
  <link rel="stylesheet" href="../estilos/style.css">
  
</head>
<body>
    <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="telaCriarFuncionario.html">Criar</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="telaAlterarFuncionario.html">Alterar</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="telaExcluirFuncionario.html">Excluir</a>
          </li>
        </ul>
    <h2>Consultar Funcionario</h2>
     <form action="consultarFuncionario.jsp">
        <label for="idConsulta">Consultar por ID:</label>
        <input type="number" id="idConsulta" name="idConsulta" placeholder="Digite o ID do Funcionario">

        <input type="submit" value="Consultar">
    </form>

         <% if (consulta != null) { %>
    <h3>Resultado da Consulta:</h3>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>ID do Funcionario</th>
                <th>Salário</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= fun.getIdFunc()%></td>
                <td><%= fun.getNomeFunc()%></td>
                <td><%= fun.getIdDepto()%></td>
                <td><%= fun.getSalHora()%></td>
            </tr>
        </tbody>
    </table>
<% } else if (consulta == null) { %>
    <script type="text/javascript">
        alert('Funcionario não existe');
        window.location.href = 'menu.jsp';
    </script>
<% } %>
 

    <!-- Formulário para listar todos os funcionarios -->
    <h2>Listar Todos os Funcionarios</h2>
    <form action="listarFuncionario.jsp">
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
