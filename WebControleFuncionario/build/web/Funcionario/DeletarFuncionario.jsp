<%-- 
    Document   : DeletarFuncionario
    Created on : 12 de set. de 2024, 07:48:37
    Author     : pedro_miranda-neto
--%>

<%@page import="controlefuncionario.Funcionario"%>
<%
    //crio a variavel com o valor do input
    int id = Integer.parseInt(request.getParameter("idExcluir"));

    //istancio a classe e dou um set
    
    Funcionario fun = new Funcionario();
    fun.setIdFunc(id);
    
    if (fun.excluirFuncionario()) {
%>
<script type="text/javascript">
    alert('Funcionario deletado');
    window.location.href = 'telaExcluirFuncionario.html'; // redireciona para a página de cadastro
</script>
<%
} else {
%>
<script type="text/javascript">
    alert('Erro ao deletar o Funcionario');
    window.location.href = 'telaExcluirFuncionario.html'; // redireciona para a página de cadastro
</script>
<%}%>
