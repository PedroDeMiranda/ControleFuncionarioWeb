<%-- 
    Document   : listarFuncionario
    Created on : 12 de set. de 2024, 07:47:45
    Author     : pedro_miranda-neto
--%>

<%@page import="controlefuncionario.Funcionario"%>
<%@page import="java.util.List"%>
<%@page import="controlefuncionario.Funcionario"%>
<%       
   //istancio a classe      
   Funcionario fun = new Funcionario();
   //Crio a ArrayList que é armazenada com todos funcionarios
   List<Funcionario> funcionarios = fun.listarFuncionarios();
   
%>

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

 

    <!-- Formulário para listar todos os funcionarios -->
    <h2>Listar Todos os Funcionarios</h2>
    <form action="listarFuncionario.jsp">
        <input type="submit" value="Listar">
    </form>
            
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
                <% for (Funcionario funcionario : funcionarios) { %>
                    <tr>
                        <td><%= funcionario.getIdFunc()%></td>
                        <td><%= funcionario.getNomeFunc()%></td>
                        <td><%= funcionario.getIdDepto()%></td>
                        <td><%= funcionario.getSalHora()%></td>
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