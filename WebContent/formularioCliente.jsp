<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulário de Cliente</title>
</head>

<body>
	
	<form name="formUser" action="" method="post" >
		
		<table align="left">
		<td>
			<ul>
				<li>Nome: <input type="text" name="nome"/></li>
				<li>CPF: <input type="text" name="cpf"/></li>
				<li>Tipo de Documento: <input type="text" name="tipodoc"/></li>
				<li>Número do Documento: <input type="text" name="numdoc"/></li>
				<li>Emissor: <input type="text" name="emissor"/></li>
				<li>Data de Emissão: <input type="text" name="dataemi"/></li>
				<li>Estado Civil: <input type="text" name="estciv"/></li>
				<li>Sexo: <select>
					<option>Masculino</option>
					<option>Feminino</option>
				</select></li>
				<li>Telefone: <input type="text" name="telefone"/></li>
				<li>Nacionalidade: <input type="text" name="nacionalidade"/></li>
				<li>Naturalidade:  <input type="text" name="naturalidade"/></li>
				<li>INSS: <input type="text" name="inss"/></li>
				<li>Ocupação: <input type="text" name="ocupacao"/></li>
				<li>Nível do Cargo: <input type="text" name="nivelcargo"/></li>
				<li>Início da Ocupação: <input type="text" name="inicioocupa"/></li>
				<li>Capacidade Civil: <input type="text" name="capciv"/></li>
				<li>Nome do Pai: <input type="text" name="nomepai"/></li>
				<li>Nome do Mãe: <input type="text" name="nomemae"/></li>
				<li>Empregador: <input type="text" name="empregador"/></li>
				<li>Renda Mensal: <input type="text" name="renda"/></li>
				<li>Conjuge: <input type="text" name="conjuge"/></li>
				<li>Nome de usuário: <input type="text" name="nomeuser"/></li>
				<li>Senha de usuário: <input type="text" name="senhauser"/></li>
			</ul>
		</td>
		</table>
	
		<input type="submit" value="Confirmar"/>
		
	</form>
	
</body>
</html>