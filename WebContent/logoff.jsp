<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>
<body>
<%
	//Destroi as sessions
	session.invalidate();
	out.println("Voc� saiu com sucesso do sistema. Tente ver agora a p�gina dos \"<a href='logado.jsp'>logados</a>\" ou efetue novamente <a href='index.html'>login</a>");
%>

</body>
</html>