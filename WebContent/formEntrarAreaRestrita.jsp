<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%  
	//Processamento da msg de erro ao tentar efetuar login
	String msg = request.getParameter("msg");
	String msgOut ="";
	String msgOutSucesso ="";
	if (msg!=null){
		//Login do usuario
		if(msg.equals("1")){
			msgOut="Login e/ou senha inválidos!";
		//login administrador
		} else if (msg.equals("2")){
			msgOut = "Login e/ou senha inválidos!";
		} 
}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<form action="loginFuncionario.jsp" method="post">
            <table><tr>
				<td>Login:</td><td><input type="text" name="loginusuario" id="loginusuario"/></td></tr>
				<tr><td>Senha:</td><td><input type="password" name="senhausuario" id="senhausuario"/></td><tr>
				<tr align="center">
				  <td colspan="2" >   
				  			<input type="submit" value="Entrar">
					  		<b><font color="red"><%= msgOut %></font></b>
					</td>
				</tr>

            </table>  
			</form>
</body>
</html>