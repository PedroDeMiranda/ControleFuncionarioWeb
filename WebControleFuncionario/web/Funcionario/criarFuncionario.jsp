<%-- 
    Document   : criarDepartamento
    Created on : 12 de set. de 2024, 07:46:29
    Author     : pedro_miranda-neto
--%>

<%@page import="controlefuncionario.Funcionario"%>
<%
    //crio as variavies com o valor do input
    String nome =  request.getParameter("nome");
    int idDep = Integer.parseInt(request.getParameter("idDepartamento"));
    double salHora = Double.parseDouble(request.getParameter("salario")); 
    
    Funcionario fun = new Funcionario();
    //istancio a classe e seto o nome do Departamento
    fun.setNomeFunc(nome);
    fun.setIdDepto(idDep);
    fun.setSalHora(salHora);
    
    //mando executar a criação do departamento
    if (fun.incluirFuncionario()){
        
%>
<script type="text/javascript">
    alert('Funcionario incluido');
    window.location.href = 'telaCriarFuncionario.html';
</script>
<%
} else {
%>
<script type="text/javascript">
    alert('Erro ao incluir o Funcionario');
    window.location.href = 'telaCriarFuncionario.html';
</script>
<%}%>