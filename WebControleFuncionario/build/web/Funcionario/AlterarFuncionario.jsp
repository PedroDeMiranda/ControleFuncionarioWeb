<%-- 
    Document   : AlterarDepartamento
    Created on : 12 de set. de 2024, 07:48:20
    Author     : pedro_miranda-neto
--%>

<%@page import="controlefuncionario.Funcionario"%>
<%
   //crio as variavies com o valor do input
    int     id       = Integer.parseInt(request.getParameter("idAlterar"));
    String  nomeNovo = request.getParameter("nomeNovo");
    int     idDep    = Integer.parseInt(request.getParameter("idDepartamento"));
    double  salHora  = Double.parseDouble(request.getParameter("salario")); 
   
    //istancio a classe e dou um set
    Funcionario fun = new Funcionario();
    
    fun.setIdFunc(id);
    fun.setNomeFunc(nomeNovo);
    fun.setIdDepto(idDep);
    fun.setSalHora(salHora);
    
    //mando executar a alteração
    if (fun.alterarFuncionario()) {
%>
<script type="text/javascript">
    alert('Funcionario alterado');
    window.location.href = 'telaAlterarFuncionario.html'; // redireciona para a página de cadastro
</script>
<%
} else {
%>
<script type="text/javascript">
    alert('Erro ao alterar o Funcionario');
    window.location.href = 'telaAlterarFuncionario.html'; // redireciona para a página de cadastro
</script>
<%}%>
