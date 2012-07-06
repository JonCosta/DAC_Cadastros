<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<title>Cadastro de cliente</title>
	<script type="text/javascript" src="http://cidades-estados-js.googlecode.com/files/cidades-estados-1.2-utf8.js"></script>
	
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="author" content="Assemblesoft">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<link rel="stylesheet" type="text/css" href="css/form.css">
	<link rel="stylesheet" type="text/css" href="css/dropdown.css">

	<script type="text/javascript" src="js/helpers.js"></script>
	<script type="text/javascript" src="js/date.js"></script>
	<script type="text/javascript" src="js/form.js"></script>
</head>
<body>
	
	<script type="text/javascript">
	window.onload = function() {
	  new dgCidadesEstados({
	    estado: document.getElementById('estado'),
	    cidade: document.getElementById('cidade')
	  });
	}
	</script>
	
	<h2>Cadastro de Novo Cliente</h2>
	<form action="cadastrarCliente.jsp" method='post'>
		<p>Por favor, preencha os campos a seguir:</p>
		<fieldset class="contact">
			<legend>Dados pessoais</legend>
			<div>
				<label for="firstname">Primeiro Nome</label> <input type="text" id="firstname" name="primeironome" >
			</div>
			<div>
				<label for="lastname">Último nome</label> <input type="text" id="lastname" name="ultimonome">
			</div>
			<div>
				<label for="cpf">CPF</label> <input type="text" id="cpf" name="cpf">
			</div>

			<div>
				<label for="tipodoc">Tipo documento</label>
				<select name="tipodoc" >
					<option value="RG">RG</option>
					<option value="Certidão de Nascimento">Certidão de nascimento</option>
					<option value="Outro">Outro...</option>
				</select>
			</div>
			<div>
				<label for="numdoc">N° documento</label><input type="text" id="numodoc" name="numdoc" >
			</div>
			<div>
				<label for="emissor">Emissor</label><input type="text" id="emissor" name="emissor" size="7" >
			</div>
			<div>
				<label for="dtemissao">Data Emissão</label><input type="text" id="dtemissao" name="dtemissao" >
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
				<label for="data">Data de Nascimento</label><input type="text" id="dtnascimento" name="dtnascimento" >
			</div>
			<div>
				<label for="email">Email</label> <input type="text" id="email" name="email" class="email">
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
				<label for="conjuge">Conjuge</label> <input type="text" name="conjuge"/>
			</div>
			<div>	
				<label for="telefone">Telefone</label><input type="text" name="telefone"/>
			</div>
			<div>	
				<label for="nacionalidade">Nacionalidade</label><input type="text" name="nacionalidade"/>
			</div>
			<div>	
				<label for="naturalidade">Naturalidade</label><input type="text" name="naturalidade"/>
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
				<label for="nomepai">Nome do pai</label><input type="text" name="nomepai"/>
			</div>
			<div>	
				<label for="nomemae">Nome da mãe</label><input type="text" name="nomemae"/>
			</div>	
		</fieldset>
		<fieldset class="login">
			<legend>Dados de Endereço</legend>
			<div>
				<label for="cep">CEP</label> <input type="text" id="cep" name="cep">
			</div>
			<div>	
				<label for="estado">Estado</label>
				<select id="estado" name="estado"></select>
			</div>
			<div>	
				<label for="estado">Cidade</label>
				<select id="cidade" name="cidade"></select>
			</div>
			<div>
				<label for="bairro">Bairro</label> <input type="text" id="bairro" name="bairro">
			</div>
			<div>
				<label for="complemento">Complemento</label> <input type="text" id="complemento" name="complemento">
			</div>
			<div>
				<label for="logradouro">Logradouro</label> <input type="text" id="logradouro" name="logradouro">
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
				<label for="tempores">Tempo de Residência</label> <input type="text" id="tempores" name="tempores">
			</div>
		</fieldset>
		<fieldset>		
			<legend>Dados profissionais</legend>
			<div>	
				<label for="ocupacao">Ocupação</label><input type="text" name="ocupacao" size="30"/>
			</div>
			<div>
				<label for="inicioocupa">Início da Ocupação</label><input type="text" name="inicioocupa" size="7"/>
			</div>
				<label for="empregador">Empregador</label><input type="text" name="empregador" size="30"/>
			<div>
				<label for="renda">Renda Mensal</label><input type="text" name="renda"/>
			</div>
		</fieldset>
		<fieldset class="login">
			<legend>Dados de logon</legend>
			<div>
				<label for="username">Nome de usuário</label> <input type="text" id="username" name="username">
			</div>
			<div>
				<label for="password">Senha</label> <input type="password" id="password" name="senha">
			</div>
			<div>
				<label for="password2">Redigite a senha</label> <input type="password" id="senha2" name="senha2">
			</div>
		</fieldset>
		
		<div><input type="submit" value="Cadastrar"/></div>
	</form>
</body>
</html>




