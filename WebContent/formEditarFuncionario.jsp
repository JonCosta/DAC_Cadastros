<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edição de Funcionário</title>
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
	Usuario u = dao.getFuncionario(i) ;
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
	
	<h2>Edição de Funcionário</h2>
	<form action="editarFuncionario.jsp" method='post'>
		<p>Lembre-se de preencher todos os campos:</p>
		<fieldset class="contact">
			<legend>Dados pessoais</legend>
			<div>
				<label for="firstname">Nome</label> <input type="text" id="firstname" name="nome" value='<%= u.getNome() %>' >
			</div>
			<div>
				<label for="cpf">CPF</label> <input type="text" id="cpf" name="cpf" value='<%= u.getCpf() %>'>
			</div>

			<div>
				<label for="tipodoc">Tipo documento</label>
				<select name="tipodoc">
					<option value="RG">RG</option>
					<option value="Certidão de Nascimento">Certidão de nascimento</option>
					<option value="Outro">Outro...</option>
				</select>
			</div>
			<div>
				<label for="numdoc">N° documento</label><input type="text" id="numodoc" name="numdoc" value='<%= u.getNumdoc() %>'>
			</div>
			<div>
				<label for="emissor">Emissor</label><input type="text" id="emissor" name="emissor" size="7" value='<%= u.getEmissor() %>' >
			</div>
			<div>
				<label for="dtemissao">Data Emissão</label><input type="text" id="dtemissao" name="dtemissao" value='<%= u.getDtEmiss() %>' >
			</div>
		
			<div class="radio">
				<fieldset>
					<legend><span>Sexo</span></legend>
					<div>
						<input type="radio" id="male" name="sexo" value="Masculino"> <label for="male">Masculino</label>
					</div>
					<div>
						<input type="radio" id="female" name="sexo" value="Feminino"> <label for="female">Feminino</label>
					</div>
				</fieldset>
			</div>
			<div>
				<label for="data">Data de Nascimento</label><input type="text" id="dtnascimento" name="dtnascimento" value='<%= u.getDataNasc() %>'>
			</div>
			<div>
				<label for="email">Email</label> <input type="text" id="email" name="email" class="email" value='<%= u.getEmail() %>'>
			</div>
			<div>
				<label for="estciv">Estado Civil</label> 
				<select name="estciv">
					<option value="Solteiro">Solteiro</option>
					<option value="Casado">Casado</option>
					<option value="Divorciado">Divorciado</option>
					<option value="Viúvo">Viúvo</option>
				</select>
			</div>
			<div>
				<label for="conjuge">Conjuge</label> <input type="text" name="conjuge" value='<%= u.getConjuge() %>'/>
			</div>
			<div>	
				<label for="telefone">Telefone</label><input type="text" name="telefone" value='<%= u.getNumTelefone() %>'/>
			</div>
			<div>	
				<label for="nacionalidade">Nacionalidade</label><input type="text" name="nacionalidade" value='<%= u.getNacionalidade() %>'/>
			</div>
			<div>	
				<label for="naturalidade">Naturalidade</label><input type="text" name="naturalidade" value='<%= u.getNaturalidade() %>'/>
			</div>	
			<div>	
				<label for="capciv">Capacidade Civil</label>
				<select name="capciv">
					<option value="Maior">Maior</option>
					<option value="Menor">Menor</option>
					<option value="Nec. Especiais">Nec. Especiais</option>
					
				</select>
			</div>
			<div>	
				<label for="nomepai">Nome do pai</label><input type="text" name="nomepai" value='<%= u.getNomepai() %>'/>
			</div>
			<div>	
				<label for="nomemae">Nome da mãe</label><input type="text" name="nomemae" value='<%= u.getNomemae() %>'/>
			</div>	
		</fieldset>
		<fieldset class="login">
			<legend>Dados de Endereço</legend>
			<div>
				<label for="cep">CEP</label> <input type="text" id="cep" name="cep" value='<%= e.getCep() %>'>
			</div>
			<div>
				<label for="estado">Estado</label>
				<select id="estado" name="estado"></select>
			</div>
			<div><label for="estado"><b>Atual:</b> <%= e.getSiglauf() %></label></div>
			<div>	
				<label for="estado">Cidade</label>
				<select id="cidade" name="cidade"></select>
			</div>
			<div><label for="estado"><b>Atual:</b> <%= e.getCidade() %></label></div>
			<div>
				<label for="bairro">Bairro</label> <input type="text" id="bairro" name="bairro" value='<%= e.getBairro() %>'>
			</div>
			<div>
				<label for="complemento">Complemento</label> <input type="text" id="complemento" name="complemento" value='<%= e.getComplemento() %>'>
			</div>
			<div>
				<label for="logradouro">Logradouro</label> <input type="text" id="logradouro" name="logradouro" value='<%= e.getLogradouro() %>'>
			</div>
			<div>
				<label for="tipores">Tipo de Residência</label>
				<select name="tipores">
					<option value="Residência">Residência</option>
					<option value="Apartamento">Apartamento</option>
					<option value="Outro">Outro...</option>
				</select>
			</div>
			<div>
				<label for="tempores">Tempo de Residência</label> <input type="text" id="tempores" name="tempores" value='<%= e.getTemporesidencia() %>'>
			</div>
		</fieldset>
		<fieldset>		
			<legend>Dados profissionais</legend>
			<div>	
				<label for="cargo">Cargo</label><input type="text" name="cargo" size="30" value='<%= u.getCargo() %>'/>
			</div>
			<div>
				<label for="nivelcargo">Nível do Cargo</label><input type="text" name="nivelcargo" size="7" value='<%= u.getNivelcargo() %>'/>
			</div>
				<label for="departamento">Departamento</label><input type="text" name="departamento" size="30" value='<%= u.getDepartamento() %>'/>
			<div>
				<label for="renda">Renda Mensal</label><input type="text" name="renda" value='<%= u.getRenda() %>'/>
			</div>
		</fieldset>
		<fieldset class="login">
			<legend>Dados de logon</legend>
			<div>
				<label for="username">Nome de usuário</label> <input type="text" id="username" name="username" value='<%= u.getNomeUsuario() %>' >
			</div>
			<div>
				<label for="password">Senha</label> <input type="password" id="password" name="senha" value='<%= u.getSenhaUsuario() %>'>
			</div>
			<div>
				<label for="password2">Redigite a senha</label> <input type="password" id="senha2" name="senha2" value='<%= u.getSenhaUsuario() %>'>
			</div>
		</fieldset>
		<input type="hidden" name="idend" value= '<%= i %>'/>
		<div><input type="submit" value="Salvar"/></div>
	</form>
	
	

</body>
</html>