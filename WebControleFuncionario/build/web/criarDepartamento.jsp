<%-- 
    Document   : criarDepartamento
    Created on : 12 de set. de 2024, 07:46:29
    Author     : pedro_miranda-neto
--%>

<%@page import="controlefuncionario.Departamento"%>
<%
    //crio as variavies com o valor do input
    String nome =  request.getParameter("nomeDepartamento");
    Departamento dep = new Departamento();
    //istancio a classe e seto o nome do Departamento
    dep.setDescDepto(nome);
    //mando executar a criação do departamento
    if (dep.incluirDepartamento()){
        response.sendRedirect("menu.jsp");
%>
<script type="text/javascript">
    alert('departamento incluido');
    window.location.href = 'menu.jsp';
</script>
<%
} else {
%>
<script type="text/javascript">
    alert('Erro ao incluir o departamento');
    window.location.href = 'menu.jsp';
</script>
<%}%>