<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML>
<html>
<head>
<title>Cadastro de Funcionários</title>
<meta name="description" content="website description">
<meta name="keywords" content="website keywords, website keywords">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" id="theme" href="css/style.css">
<!-- modernizr enables HTML5 elements and feature detects --><script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
<style type="text/css">
body,td,th {
	font-size: 0.8em;
	color: #CCCCCC;
}
</style>
	<script type='text/javascript'>
	function confirma(){
				if (confirm('Tem certeza de que deseja excluir esse Cliente?'))
					document.form.submit;		
				else
					return false;
			}
	</script>
</head>
<body>
  <div id="main">
    <header><div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.jsp">Banco<span class="logo_colour">TADS</span></a></h1>
          <h2>2012</h2>
        </div>
        
        
        <form method="post" action="login.jsp" id="search">
          <table>
          <tr align="center"><td colspan="4" >Já é cliente?! Acesse já sua conta!</td></tr>
          <tr><td>
				<label>Login:</label></td>
				<td><input type="text" name="loginusuario" id="loginusuario" size="7"/></td>
				<td><label>Senha:</label><input type="password" name="senhausuario" id="senhausuario" size="7"/></td>
		  <td><input type="submit" value="Ok"></td>
          </tr>

          </table>
          
         
		
		</form>
		
      </div>
      <nav><ul class="sf-menu" id="nav">
<li class="current"><a href="index.jsp">Home</a></li>
          <li><a href="abreconta.jsp">Abrir Conta</a></li>
          <li><a href="#">Conta e Servi&ccedil;os</a><ul>
<li><a href="formSaldo.jsp">Saldo</a></li>
              <li>
<a href="formTransferencia.jsp">Transferências</a>
                
</li>

            </ul></li>
          <li><a href="listarEmprestimos.jsp">Empr&eacute;stimos</a></li>
          <li>
<a href="listarPagamentos.jsp">Pagamentos	</a>
            
</li>
          <li><a href="sobre.php">Sobre</a></li>
        </ul></nav></header>
        <% String msgLogon = "Você efetuou login como "+session.getAttribute("login")+" - Area Restrita"; %>
         <b> <font color="#FFB90F"><%= msgLogon %></font></b>
         
        <div id="site_content">
        
      <div id="sidebar_container">
        <div class="sidebar">
          <h3>Área restrita</h3>
          <div class="sidebar_item">

             <ul>
<li><a href="listaSolicitacoes.jsp">Novos Clientes</a></li>
              <li><a href="listaClientes.jsp">Cadastro de cliente</a></li>
              <li><a href="listaFuncionarios.jsp">Cadastro de Funcionario</a></li>	
              <li><a href="#">An&aacute;lise</a></li>
              
            </ul> 
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <h3>Sobre</h3>
          <div class="sidebar_item">
            <ul>
<li><a href="#">Institucional</a></li>
              <li><a href="#">Fale Conosco</a></li>
              <li><a href="#">Servi&ccedil;os adicionais</a></li>
            </ul>
</div>
          <div class="sidebar_base"></div>
        </div>
        
      </div>
      
      <div class="content">
        <h1>Cadastro de FUncionários</h1>
        <div class="content_item">
          		<table>
			<tr>
				<td>
					<form action="">
						<input type="text" size='50' name="parambusca"/>
						<input type="submit" value="Buscar"/>
					</form>
				</td>
				<td align="right">
					<form action="formCliente.jsp"><input type="submit" value ="Novo cadastro"/></form>
				</td>
			</tr>
		</table>
		
	<br>

		<table border="1">
		
		
		<%@ page import="dao.UsuarioDAO" %>
		
		<%
			
			UsuarioDAO dao = new UsuarioDAO() ; //Gera um objeto para as operações do BD de usuário
			String tabela = dao.listarClientes() ; //Recebe um String com a lista de usuários em formato e tabela
		
		%>
		
		<tr>
			<%=tabela %>
		</tr>
		</table>
        </div>
      </div>
      
      </div>
    </div>
    
    <footer>
      <p><a href="index.jsp">Home</a> | <a href="examples.html">ABRIR CONTA</a> | <a href="page.html">CONTA E SERVI&Ccedil;OS</a> | <a href="another_page.html">EMPR&Eacute;STIMOS</a> | <a href="contact.php">PAGAMENTOS</a></p>
      <p>Copyright &copy; BANCO TADS | Jonathan costa/val&eacute;ria pedro</p>
    </footer>

  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script><script type="text/javascript" src="js/jquery.easing-sooper.js"></script><script type="text/javascript" src="js/jquery.sooperfish.js"></script><script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>





