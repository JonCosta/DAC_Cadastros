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
<title></title>
</head>
<body>



<%
	
	String nome = "", cpf = "",  tipodoc = "", numdoc = "", emissor  = "", dtemiss = "", sexo = "";
	String data = "", estciv = "", nomepai = "", nomemae = "", email ="", conjuge = "", telefone = "", nacionalidade = "" ;
	String naturalidade = "", capciv = "", ocupacao = "", inicioocupa = "", empregador = "" ;
	String nomeuser = "", senhauser = "", senha2 = "" ;
	String cep = "", cidade = "", estado = "", bairro = "", complemento = "", tipores = "", logradouro = "" ;
	float renda = 0;
	int tempores = 0 ;
	
	
	try {
		
		//Declaração das variáveis
		String primeironome = request.getParameter("primeironome") ;
		System.out.println("Primeiro nome="+primeironome);
		
		String ultimonome = request.getParameter ("ultimonome") ;
		System.out.println("segundo nome="+ultimonome);
		
		nome = primeironome + " " + ultimonome ;
		System.out.println("nome="+nome);
		
		cpf = request.getParameter("cpf") ;
		System.out.println("cpf="+cpf);
		
		tipodoc = request.getParameter("tipodoc") ;
		System.out.println("tipo doc="+tipodoc);
		
		numdoc = request.getParameter("numdoc") ;
		System.out.println("Numdoc="+numdoc);
		
		emissor = request.getParameter("emissor") ;
		System.out.println("Emissor="+emissor);
		
		dtemiss = request.getParameter("dtemissao") ;
		System.out.println("dt emissao ="+dtemiss);
		
		sexo = request.getParameter("sexo") ;
		System.out.println("sexo ="+dtemiss);
		
		data = request.getParameter("dtnascimento") ;
		System.out.println("data ="+data);
		
		email = request.getParameter("email") ;
		System.out.println("email ="+email);
		
		estciv = request.getParameter("estciv") ;
		System.out.println("estciv ="+estciv);
		
		conjuge = request.getParameter("conjuge") ;
		System.out.println("conjuge ="+conjuge);
		
		telefone= request.getParameter("telefone") ;
		System.out.println("telefone ="+telefone);
		
		nomepai = request.getParameter("nomepai") ;		
		System.out.println("nomepai ="+nomepai);
		
		nomemae = request.getParameter("nomemae") ;
		System.out.println("nomemae ="+nomemae);
				
		nacionalidade = request.getParameter("nacionalidade") ;
		System.out.println("nacionalidade ="+nacionalidade);
		
		naturalidade = request.getParameter("naturalidade") ;
		System.out.println("naturalidade ="+naturalidade);
		
		capciv = request.getParameter("capciv") ;
		System.out.println("capciv ="+capciv);
		
		ocupacao = request.getParameter("ocupacao") ;
		System.out.println("ocupacao ="+ocupacao);
		
		inicioocupa = request.getParameter("inicioocupa") ;
		System.out.println("inicioocupa ="+inicioocupa);
		
		empregador = request.getParameter("empregador") ;
		System.out.println("empregador ="+empregador);
		
		String aux=request.getParameter("renda");
		//renda = Float.parseFloat(request.getParameter("renda") ) ;
		renda = Float.parseFloat(aux);
		
		System.out.println("renda ="+renda);
		
		//Para este cadastro, nao é necessario enviar informações de logon
		//nomeuser = null;
		//senhauser = null;
		//senha2 = null;
		
		//Seta situação do cliente em cadastro como não ativo, portanto, possui uma solicitação vinculada
		String situacao = "0";
		
		cep = request.getParameter("cep") ;
		estado = request.getParameter("estado") ;
		cidade = request.getParameter("cidade") ;
		bairro = request.getParameter("bairro") ;
		complemento = request.getParameter("complemento") ;
		
		String aux2 = request.getParameter("tempores");
		tempores = Integer.parseInt(aux2);
		tipores = request.getParameter("tipores") ;
		logradouro = request.getParameter("logradouro") ;
			
		
		Endereco e = new Endereco(cep, cidade, estado, bairro, logradouro, complemento, tipores, tempores) ;
			
		UsuarioDAO dao = new UsuarioDAO() ;
		
		EnderecoDAO edao = new EnderecoDAO() ;
		
		//testa se o cadastro de endereço foi gravado no banco
		boolean ok1 = edao.cadastrarEnd(e) ;
		
		if(ok1){
			//pega o ultimo idendereco cadastrado
			int id = edao.getMaxId() ;
		
			//monta o objeto de acordo com os parametros vindos do form e utiliza o mesmo id do endereco para cadastro
			Usuario u = new Usuario(id,nome,cpf,tipodoc, numdoc,emissor,dtemiss,sexo,data,estciv,email,conjuge,nomepai,nomemae,telefone,nacionalidade,naturalidade,capciv,ocupacao,inicioocupa,empregador,renda,nomeuser,senhauser,false,situacao );

			
			//cadastra o cliente no bd e retorna o resultado
			boolean ok2 = dao.cadastrarCliente(u) ;
			
			if(ok2){
				%>Cadastro realizado com sucesso<%
			}else{
				%>Erro ocorrido durante o cadastro<%
			}
			
		}//if ok1
		else {
			%>Erro ao cadastrar endereco<%
		}
	}catch(NumberFormatException e1){
		e1.printStackTrace() ;
}

	

	%>

</body>
</html>