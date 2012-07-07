<%@ page language="java" import="java.util.*"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head> 
<body>
<% 
	String pagina ="";//pagina que sera redirecionada depois de logado
	String loginusuario= request.getParameter("loginusuario"); // Pega o Login vindo do formulário
	String senhausuario= request.getParameter("senhausuario"); //Pega a senha vinda do formulário
	UsuarioDAO dao = new UsuarioDAO();
	//Verifica se as entradas estão vazias
	if ((loginusuario == "")||(senhausuario == "")){
		pagina= "index.jsp";
		String erro="1";
		%>
		<jsp:forward page= "<%= pagina %>">
			<jsp:param name="msg" value="<%= erro %>"/>
		</jsp:forward>
	<%} else {
		Usuario u = new Usuario(loginusuario, senhausuario);
		//login e senha verificados estão corretos
		boolean achou = dao.verificarUsuario(u);
		if(achou==true){
			pagina= "index.jsp";			
			//registra a sessão
			HttpSession nsession = request.getSession(true) ;
			nsession.setAttribute("login", loginusuario) ;
			
			//registra o cookie do usuario logado e redireciona para home
			//if(username==null) username="";
			
			Date now = new Date();
			String timestamp = now.toString();
			Cookie cookie = new Cookie ("login",loginusuario);
			cookie.setMaxAge(30*60);
			response.addCookie(cookie);
			%>
				
			<jsp:forward page="<%= pagina %>">
				<jsp:param name="msg" value="3"/>
			</jsp:forward>	
<%		} else {
			pagina= "index.jsp";
			String erro="2";
			//redireciona para página inicial mostrando qual foi o erro
			%>
			<jsp:forward page= "<%= pagina %>">
				<jsp:param name="msg" value="<%= erro %>"/>
			</jsp:forward>	
		<%}
	}
	

%>

</body>
</html>