<%-- 
    Document   : cadastraUsuario
    Created on : 9 de set. de 2024, 08:04:05
    Author     : Marcio Schoenfelder
--%>

<%@page import="controlefuncionario.Usuario"%>
<%
    String vEmail =  request.getParameter("email");
    String vSenha =  request.getParameter("senha");
    
    Usuario usu = new Usuario();
    usu.setEmail(vEmail);
    usu.setSenha(vSenha);
    
    if (usu.incluirUsuario()){
        
        response.sendRedirect("index.html");
    }


%>
