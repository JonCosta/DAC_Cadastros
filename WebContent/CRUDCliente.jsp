<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<title>Cadastro de cliente</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">

</head>
<body>

	<h2></h2>
	<form name="formPesquisaCRUD" action="" >
		<p></p>
		
		
		
		<table  width="50%">
			<tr>
				<td><select name="tipobusca">
					<option value="#">--tipo de busca</option>
					<option value="cpf">por CPF</option>
					<option value="nome">por NOME</option>
				</select>

				<input type="text" name="parambusca"/><input type="submit" value="Buscar"/></td>
				
				<td align="right"><input type="submit" value ="Novo cadastro"/></td>
			</tr>
		</table>
		
	</form>
	<br>
	<form name="formCRUD" action="">

		<table border="1" width="50%">
		<tr>
			<th>
				Código
			</th>
			<th>
				Nome
			</th>
			<th>
				Cliente desde
			</th>
			<th>
				Ocupação
			</th>
			<th>
				N° C/C
			</th>
			<th>
				Editar
			</th>
			<th>
				Excluir
			</th>
		</tr>
		<tr>
			<td>
				1
			</td>
			<td>
				Valeria
			</td>
			<td>
				12/12/1987
			</td>
			<td>
				Programadora
			</td>
			<td>
				123-4
			</td>
			<td>
				<input type="submit" value="Editar"/>
			</td>
			<td>
				<input type="submit" value="Excluir"/>
			</td>
		</tr>
		</table>
		
	</form>	
</body>
</html>




