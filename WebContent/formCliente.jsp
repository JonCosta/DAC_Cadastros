<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<title>Cadastro de cliente</title>
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

	<h2>Cadastro de Novo Cliente</h2>
	<form action="">
		<p>Por favor, preencha os campos a seguir:</p>
		<fieldset class="contact">
			<legend>Dados Pessoais</legend>
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
					<option value="rg">RG</option>
					<option value="cpf">Certidão de nascimento</option>
					<option value="outro">Outro...</option>
				</select>
			</div>
			<div>
				<label for="numdoc">N° documento</label><input type="text" id="numodoc" name="numodoc" >
			</div>
			<div>
				<label for="emissor">Emissor</label><input type="text" id="emissor" name="emissor" size="7" >
			</div>
			<div>
				<label for="dtemissao">Data Emissão</label><input type="text" id="dtemissao" name="dtemissao" >
			</div>
		
			</div>
			<div class="radio">
				<fieldset>
					<legend><span>Sexo</span></legend>
					<div>
						<input type="radio" id="male" name="sexo" value="masc"> <label for="male">Masculino</label>
					</div>
					<div>
						<input type="radio" id="female" name="sexo" value="fem"> <label for="female">Feminino</label>
					</div>
				</fieldset>
			</div>
			<div class="date">
				<fieldset>
					<legend><span>Data de nascimento</span></legend>
					<div>
						<label for="dia">Dia</label>
						<select id="dia" name="dtnasc_dia">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
					</div>
					<div>
						<label for="mes">Mês</label>
						<select id="mes" name="dtnasc_mes">
							<option value="1">Janeiro</option>
							<option value="2">Fevereiro</option>
							<option value="3">Março</option>
							<option value="4">Abril</option>
							<option value="5">Maio</option>
							<option value="6">Junho</option>
							<option value="7">Julho</option>
							<option value="8">Agosto</option>
							<option value="9">Setembro</option>
							<option value="10">Outubro</option>
							<option value="11">Novembro</option>
							<option value="12">Dezembro</option>
						</select>
					</div>
					<div>
						<label for="ano">Ano</label>
						<select id="ano name="dtnasc_ano">
							<option value="2004">2004</option>
							<option value="2005">2005</option>
							<option value="2006">2006</option>
							<option value="2007">2007</option>
							<option value="2008">2008</option>
						</select>
					</div>
				</fieldset>
			</div>
			<div>
				<label for="email">Email</label> <input type="text" id="email" name="email" class="email">
			</div>
			<div>
				<label for="estciv">Estado Civil</label> 
				<select name="estciv">
					<option value="solteiro">Solteiro</option>
					<option value="casado">Casado</option>
					<option value="divorcio">Divorciado</option>
					<option value="viúvo">Viúvo</option>
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
				<label for="inss">INSS</label><input type="text" name="inss"/>
			</div>	
			<div>	
				<label for="capciv">Capacidade Civil</label>
				<select name="capciv">
					<option value="solteiro">Maior</option>
					<option value="casado">Menor</option>
					<option value="divorcio">Nec. Especiais</option>
					
				</select>
			</div>
			<div>	
				<label for="nomepai">Nome do pai</label><input type="text" name="nomepai"/>
			</div>
			<div>	
				<label for="nomemae">Nome da mãe</label><input type="text" name="nomemae"/>
			</div>	
		</fieldset>
		<fieldset>		
			<legend>Dados profissionais</legend>
			<div>	
				<label for="ocupacao">Ocupação</label><input type="text" name="ocupacao" size="30"/>
			</div>
			<div>
				<label for="inicioocupa">Início da Ocupação</label><input type="text" name="inicioocupa" size="30"/>
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




