<%-- 
    Document   : AlterarDepartamento
    Created on : 12 de set. de 2024, 07:48:20
    Author     : pedro_miranda-neto
--%>

<%@page import="controlefuncionario.Departamento"%>
<%
   //crio as variavies com o valor do input
    int id = Integer.parseInt(request.getParameter("idAlterar"));
    String nomeNovo =  request.getParameter("nomeNovoDepartamento");
   
    //istancio a classe e dou um set
    Departamento dep = new Departamento();
    dep.setIdDepto(id);
    dep.setDescDepto(nomeNovo);

    //mando executar a alteração
    if (dep.alterarDepartamento()) {
%>
<script type="text/javascript">
    alert('departamento alterado');
    window.location.href = 'menu.jsp'; // redireciona para a página de cadastro
</script>
<%
} else {
%>
<script type="text/javascript">
    alert('Erro ao alterar o departamento');
    window.location.href = 'menu.jsp'; // redireciona para a página de cadastro
</script>
<%}%>
