<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="dao.UsuarioDAO" %>
		<%@ page import="dao.EnderecoDAO" %>
		<%@ page import="modelo.Endereco" %>
		<%@ page import="modelo.Usuario" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exclus�o de Usu�rio</title>
</head>
<body>
	
	<% 
	
	int id = Integer.parseInt(request.getParameter("id")) ;
	
	UsuarioDAO dao = new UsuarioDAO() ;
	
	try{
		
		boolean ok = dao.excluirUsuario(id) ;
		
		if(ok){
			%>Usu�rio exclu�do com sucesso<%
		}else{
			%>Houve um erro e n�o foi poss�vel excluir o usu�rio<%
		}
		
	}catch(NumberFormatException e1){
		
	}catch(Exception ex){
		
	}
	
	%>
	
</body>
</html>