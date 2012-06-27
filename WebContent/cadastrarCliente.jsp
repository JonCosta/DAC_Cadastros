<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Cliente</title>
</head>
<body>

<%@ page import="dao.UsuarioDAO" %>
<%@ page import="modelo.Usuario" %>

<%
	
	//Declaração das variáveis
	String primeironome = request.getParameter("primeironome") ;
	String ultimonome = request.getParameter ("ultimonome") ;
	String nome = "", cpf = "",  tipodoc = "", numdoc = "", emissor  = "", dtemiss = "", sexo = "";
	String data = "", estciv = "", nomepai = "", nomemae = "", email ="", conjuge = "", telefone = "", nacionalidade = "" ;
	String naturalidade = "", capciv = "", ocupacao = "", inicioocupa = "", empregador = "" ;
	String nomeuser = "", senhauser = "", senha2 = "" ;
	float renda = 0 ;
	
	//Variáveis recebem parâmetros do formulário
	nome = primeironome + " " + ultimonome ;
	cpf = request.getParameter("cpf") ;
	tipodoc = request.getParameter("tipodoc") ;
	numdoc = request.getParameter("numdoc") ;	
	emissor = request.getParameter("emissor") ;
	dtemiss = request.getParameter("dtemissao") ;
	
	sexo = request.getParameter("sexo") ;
	data = request.getParameter("dtnascimento") ;
	estciv = request.getParameter("estciv") ;
	nomepai = request.getParameter("nomepai") ;
	nomemae = request.getParameter("nomemae") ;
	email = request.getParameter("email") ;
	conjuge = request.getParameter("conjuge") ;
	telefone= request.getParameter("telefone") ;
	
	nacionalidade = request.getParameter("nacionalidade") ;
	naturalidade = request.getParameter("naturalidade") ;
	capciv = request.getParameter("capciv") ;
	ocupacao = request.getParameter("ocupacao") ; 
	inicioocupa = request.getParameter("inicioocupa") ;
	empregador = request.getParameter("empregador") ;
	renda = Float.parseFloat(request.getParameter("renda") ) ;
	
	nomeuser = request.getParameter("username") ;
	senhauser = request.getParameter("senha") ;
	senha2 = request.getParameter("senha2") ;
	
	System.out.println() ;


if ((primeironome == "")||(ultimonome=="")||(cpf=="")) { %>
	
	"Erro no formulário"
<%	
}else{ 
	
	Usuario u = new Usuario(nome, cpf, tipodoc, numdoc, emissor, dtemiss, sexo, data, estciv, email, conjuge, nomepai, nomemae, 
			telefone, nacionalidade, naturalidade, capciv, ocupacao, inicioocupa, empregador, renda, nomeuser, senhauser, false) ;
	
	UsuarioDAO dao = new UsuarioDAO() ;
	boolean ok = dao.cadastrarCliente(u) ;
	
	if(ok){
		%>Cadastro realizado com sucesso<%
	}else{
		%>Erro ocorrido durante o cadastro<%
	} 
	
}//Fecha else de campos vazios

%>


</body>
</html>