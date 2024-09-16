<%-- 
    Document   : DeletarDepartamento
    Created on : 12 de set. de 2024, 07:48:37
    Author     : pedro_miranda-neto
--%>

<%@page import="controlefuncionario.Departamento"%>
<%
    //crio a variavel com o valor do input
    int id = Integer.parseInt(request.getParameter("idExcluir"));

    //istancio a classe e dou um set
    
    Departamento dep = new Departamento();
    dep.setIdDepto(id);

    if (dep.excluirDepartamento()) {
%>
<script type="text/javascript">
    alert('departamento deletado');
    window.location.href = 'menu.jsp'; // redireciona para a página de cadastro
</script>
<%
} else {
%>
<script type="text/javascript">
    alert('Erro ao deletar o departamento');
    window.location.href = 'menu.jsp'; // redireciona para a página de cadastro
</script>
<%}%>
