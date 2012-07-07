<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Solicitações de Abertura de Conta</title>
</head>
<body>

	<h2>Lista de Solicitações de Conta</h2>
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
					<form action=""><input type="submit" value ="Novo cadastro"/></form>
				</td>
			</tr>
		</table>
		
	<br>

		<table border="1" width="50%">
		
		<%@ page import="dao.SolicitacaoContaDAO" %>
		
		<%
			
			SolicitacaoContaDAO dao = new SolicitacaoContaDAO() ; //Gera um objeto para as operações do BD de usuário
			String tabela = dao.listarSolicitacoes() ; //Recebe um String com a lista de usuários em formato e tabela
		
		%>
		
		<tr>
			<%=tabela %>
		</tr>
		</table>

</body>
</html>