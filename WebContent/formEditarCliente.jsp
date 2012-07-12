<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edição de Cliente</title>
	<script type="text/javascript" src="http://cidades-estados-js.googlecode.com/files/cidades-estados-1.2-utf8.js"></script>
	
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="author" content="Assemblesoft">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<link rel="stylesheet" type="text/css" href="css/screen.css">
	<link rel="stylesheet" type="text/css" href="css/dropdown.css">

	<script type="text/javascript" src="js/helpers.js"></script>
	<script type="text/javascript" src="js/date.js"></script>
	<script type="text/javascript" src="js/form.js"></script>
</head>
<body>

<%@ page import="dao.UsuarioDAO" %>
<%@ page import="dao.EnderecoDAO" %>
<%@ page import="modelo.Usuario" %>
<%@ page import="modelo.Endereco" %>

<%
	int i = Integer.parseInt(request.getParameter("id")) ;
	UsuarioDAO dao = new UsuarioDAO() ;
	EnderecoDAO edao = new EnderecoDAO() ;
	Usuario u = dao.getCliente(i) ;
	Endereco e = edao.getEndereco(i) ;
%>
	
	
	<script type="text/javascript">
	window.onload = function() {
	  new dgCidadesEstados({
	    estado: document.getElementById('estado'),
	    cidade: document.getElementById('cidade')
	  });
	}
	</script>
	
	<h2>Edição de Cliente</h2>
	<form action="editarCliente.jsp" method='post'>
		<p>Lembre-se de preencher todos os campos:</p>
		<fieldset class="contact">
			<legend>Dados pessoais</legend>
			<p>
				<span> Nome</span> <input type="text" id="firstname" name="nome" value='<%= u.getNome() %>' >
			</p>
			<p>
				<span>CPF</span> <input type="text" id="cpf" name="cpf" value='<%= u.getCpf() %>'>
			</p>

			<p>
				<span> Tipo documento</span>
				<select name="tipodoc">
					<option value="RG">RG</option>
					<option value="Certidão de Nascimento">Certidão de nascimento</option>
					<option value="Outro">Outro...</option>
				</select>
			</p>
			<p>
				<span> N° documento</span><input type="text" id="numodoc" name="numdoc" value='<%= u.getNumdoc() %>'>
			</p>
			<p>
				<span>Emissor</span><input type="text" id="emissor" name="emissor" size="7" value='<%= u.getEmissor() %>' >
			</p>
			<p>
				<span> Data Emissão</span><input type="text" id="dtemissao" name="dtemissao" value='<%= u.getDtEmiss() %>' >
			</p>
		
			<div class="radio">
				<fieldset>
					<legend><span>Sexo</span></legend>
					<p>
						<input type="radio" id="male" name="sexo" value="Masculino"> <span>Masculino</span>
					</p>
					<p>
						<input type="radio" id="female" name="sexo" value="Feminino"> <span>Feminino</span>
					</p>
				</fieldset>
			</p>
			<p>
				<span>Data de Nascimento</span><input type="text" id="dtnascimento" name="dtnascimento" value='<%= u.getDataNasc() %>'>
			</p>
			<p>
				<span> Email</span> <input type="text" id="email" name="email" class="email" value='<%= u.getEmail() %>'>
			</p>
			<p>
				<span>Estado Civil</span> 
				<select name="estciv">
					<option value="Solteiro">Solteiro</option>
					<option value="Casado">Casado</option>
					<option value="Divorciado">Divorciado</option>
					<option value="Viúvo">Viúvo</option>
				</select>
			</p>
			<p>
				<span>Conjuge</span> <input type="text" name="conjuge" value='<%= u.getConjuge() %>'/>
			</p>
			<p>	
				<span>Telefone</span><input type="text" name="telefone" value='<%= u.getNumTelefone() %>'/>
			</p>
			<p>	
				<span>Nacionalidade</span><input type="text" name="nacionalidade" value='<%= u.getNacionalidade() %>'/>
			</p>
			<p>	
				<span>Naturalidade</span><input type="text" name="naturalidade" value='<%= u.getNaturalidade() %>'/>
			</p>	
			<p>	
				<span>Capacidade Civil</span>
				<select name="capciv">
					<option value="Maior">Maior</option>
					<option value="Menor">Menor</option>
					<option value="Nec. Especiais">Nec. Especiais</option>
					
				</select>
			</p>
			<p>	
				<span>Nome do pai</span><input type="text" name="nomepai" value='<%= u.getNomepai() %>'/>
			</p>
			<p>	
				<span>Nome da mãe</span><input type="text" name="nomemae" value='<%= u.getNomemae() %>'/>
			</p>	
		</fieldset>
		<fieldset class="login">
			<legend>Dados de Endereço</legend>
			<p>
				<span>CEP</span> <input type="text" id="cep" name="cep" value='<%= e.getCep() %>'>
			</p>
			<p>
				<span>Estado</span>
				<select id="estado" name="estado"></select>
			</p>
			<p><span><b>Atual:</b> <%= e.getSiglauf() %></span></p>
			<p>	
				<span>Cidade</span>
				<select id="cidade" name="cidade"></select>
			</p>
			<p><span><b>Atual:</b> <%= e.getCidade() %></span></p>
			<p>
				<span>Bairro</span> <input type="text" id="bairro" name="bairro" value='<%= e.getBairro() %>'>
			</p>
			<p>
				<span>Complemento</span> <input type="text" id="complemento" name="complemento" value='<%= e.getComplemento() %>'>
			</p>
			<p>
				<span>Logradouro</span> <input type="text" id="logradouro" name="logradouro" value='<%= e.getLogradouro() %>'>
			</p>
			<p>
				<span>Tipo de Residência</span>
				<select name="tipores">
					<option value="Residência">Residência</option>
					<option value="Apartamento">Apartamento</option>
					<option value="Outro">Outro...</option>
				</select>
			</p>
			<p>
				<span>Tempo de Residência</span> <input type="text" id="tempores" name="tempores" value='<%= e.getTemporesidencia() %>'>
			</p>
		</fieldset>
		<fieldset>		
			<legend>Dados profissionais</legend>
			<p>	
				<span>Ocupação</span><input type="text" name="ocupacao" size="30" value='<%= u.getOcupacao() %>'/>
			</p>
			<p>
				<span>Início da Ocupação</span><input type="text" name="inicioocupa" size="7" value='<%= u.getInicioocupacao() %>'/>
			</p>
				<span>Empregador</span><input type="text" name="empregador" size="30" value='<%= u.getEmpregador() %>'/>
			<p>
				<span>Renda Mensal</span><input type="text" name="renda" value='<%= u.getRenda() %>'/>
			</p>
		</fieldset>
		<fieldset class="login">
			<legend>Dados de logon</legend>
			<p>
				<span>Nome de usuário</span> <input type="text" id="username" name="username" value='<%= u.getNomeUsuario() %>' >
			</p>
			<p>
				<span>Senha</span> <input type="password" id="password" name="senha" value='<%= u.getSenhaUsuario() %>'>
			</p>
			<p>
				<span>Redigite a senha</span> <input type="password" id="senha2" name="senha2" value='<%= u.getSenhaUsuario() %>'>
			</p>
		</fieldset>
		<input type="hidden" name="idend" value= '<%= i %>'/>
		<p><input type="submit" value="Salvar"/></p>
	</form>
	
	

</body>
</html>