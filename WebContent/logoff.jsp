<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
	//Destroi as sessions
	session.invalidate();
	
	//out.println("Voc� saiu com sucesso do sistema. Tente ver agora a p�gina dos \"<a href='logado.jsp'>logados</a>\" ou efetue novamente <a href='index.html'>login</a>");
%>
<jsp:forward page="index.jsp"/>
