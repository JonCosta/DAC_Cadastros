<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<title>Cadastro de cliente</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">

</head>
<body>

	<h2></h2>
		<p></p>
		
		
		
		<table  width="50%">
			<tr>
				<td>
					<form action="">
						<input type="text" size='50' name="parambusca"/>
						<input type="submit" value="Buscar"/>
					</form>
				</td>
				<td align="right">
					<form action="formFuncionario.jsp"><input type="submit" value ="Novo cadastro"/></form>
				</td>
			</tr>
		</table>
		
	<br>
	<form name="formCRUD" action="">

		<table border="1" width="50%">
		<tr>
			<th>
				Nome
			</th>
			<th>
				CPF
			</th>
			<th>
				Tipo de Doc.
			</th>
			<th>
				Núm. de Doc.
			</th>
			<th>
				Telefone
			</th>
			<th>
				Sexo
			</th>
			<th>
				Data de Nasc.
			</th>
			<th>
				Estado Civil
			</th>
			<th>
				Cargo
			</th>
			<th>
				Departamento
			</th>
			<th>
				Editar
			</th>
			<th>
				Excluir
			</th>
		</tr>
		
		<%@ page import="dao.UsuarioDAO" %>
		
		<%
			
			UsuarioDAO dao = new UsuarioDAO() ; //Gera um objeto para as operações do BD de usuário
			String tabela = dao.listarFuncionarios() ; //Recebe um String com a lista de usuários em formato e tabela
		
		%>
		
		<tr>
			<%=tabela %>
		</tr>
		</table>
		
	</form>	
</body>
</html>




