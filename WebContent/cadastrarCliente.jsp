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
<title>Cadastro de Cliente</title>
</head>
<body>



<%
	
	String nome = "", cpf = "",  tipodoc = "", numdoc = "", emissor  = "", dtemiss = "", sexo = "";
	String data = "", estciv = "", nomepai = "", nomemae = "", email ="", conjuge = "", telefone = "", nacionalidade = "" ;
	String naturalidade = "", capciv = "", ocupacao = "", inicioocupa = "", empregador = "" ;
	String nomeuser = "", senhauser = "", senha2 = "" ;
	String cep = "", cidade = "", estado = "", bairro = "", complemento = "", tipores = "", logradouro = "" ;
	int tempores = 0 ;
	float renda = 0 ;
	
	try{
		
		//Declaração das variáveis
		String primeironome = request.getParameter("primeironome") ;
		String ultimonome = request.getParameter ("ultimonome") ;
		
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
		
		cep = request.getParameter("cep") ;
		estado = request.getParameter("estado") ;
		cidade = request.getParameter("cidade") ;
		bairro = request.getParameter("bairro") ;
		complemento = request.getParameter("complemento") ;
		tempores = Integer.parseInt(request.getParameter("tempores") );
		tipores = request.getParameter("tipores") ;
		logradouro = request.getParameter("logradouro") ;
			
		Endereco e = new Endereco(cep, cidade, estado, bairro, logradouro, complemento, tipores, tempores) ;
			
		UsuarioDAO dao = new UsuarioDAO() ;
		EnderecoDAO edao = new EnderecoDAO() ;
		
		boolean ok1 = edao.cadastrarEnd(e) ;
		
		if(ok1){
			
			int id = edao.getMaxId() ;
			
			Usuario u = new Usuario(id, nome, cpf, tipodoc, numdoc, emissor, dtemiss, sexo, data, estciv, email, conjuge, nomepai, nomemae, 
					telefone, nacionalidade, naturalidade, capciv, ocupacao, inicioocupa, empregador, renda, nomeuser, senhauser, false) ;
			
			boolean ok2 = dao.cadastrarCliente(u) ;
			
			if(ok2){
				%>Cadastro realizado com sucesso<%
			}else{
				%>Erro ocorrido durante o cadastro<%
			}
			
		}//if ok1
		 
		
	}catch(NumberFormatException e1){
		
		%> Houve algum erro no preenchimento do formulário, volte e tente novamente <%
		
	}catch(Exception ex){
		%> Houve algum erro no preenchimento do formulário, volte e tente novamente <%
	}//catch

	%>

</body>
</html>