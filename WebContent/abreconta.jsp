<!DOCTYPE HTML>
<html>
<head>
<title>Banco TADS</title>
<head>
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

	<script type="text/javascript" src="http://cidades-estados-js.googlecode.com/files/cidades-estados-1.2-utf8.js"></script>
	


	<script type="text/javascript" src="js/helpers.js"></script>
	<script type="text/javascript" src="js/date.js"></script>
	<script type="text/javascript" src="js/form.js"></script>

	
	<script type="text/javascript">
	window.onload = function() {
	  new dgCidadesEstados({
	    estado: document.getElementById('estado'),
	    cidade: document.getElementById('cidade')
	  });
	}
	</script>

</head>
<body>
  <div id="main">
    <header><div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">Banco<span class="logo_colour">TADS</span></a></h1>
          <h2>2012</h2>
        </div>
        <form method="post" action="#" id="search">
          <table>
          <tr align="center"><td colspan="4" >J� � cliente?! Acesse j� sua conta!</td></tr>
          <tr><td>
				<label>Conta corrente n�:</label></td>
				<td><input type="text" name="numconta" id="numconta" size="7"/></td>
				<td><label>Senha:</label><input type="password" name="senhausuario" id="senhausuario" size="7"/></td>
		  <td><input type="submit" value="Ok"></td>
          </tr>
          </table>
</form>
      </div>
      <nav><ul class="sf-menu" id="nav">
<li ><a href="index.html">Home</a></li>
          <li class="current"><a href="abreconta.html">Abrir Conta</a></li>
          <li><a href="page.html">Conta e Servi&ccedil;os</a><ul>
<li><a href="#">Saldo</a></li>
              <li>
<a href="#">Transfer�ncias</a>
                
</li>

            </ul></li>
          <li><a href="another_page.html">Empr&eacute;stimos</a></li>
          <li>
<a href="#">Pagamentos	</a>
            
</li>
          <li><a href="contact.php">Sobre</a></li>
        </ul></nav></header><div id="site_content">
      <div id="sidebar_container">
        <div class="sidebar">
          <h3>�rea restrita</h3>
          <div class="sidebar_item">

            <form>
            <table><tr>
				<td>Login:</td><td><input type="text" name="loginfunc" id="loginfunc"/></td></tr>
				<tr><td>Senha:</td><td><input type="password" name="senhafunc" id="senhafunc"/></td><tr>
				<tr align="center">
				  <td colspan="2" >   <input type="submit" value="Entrar">
                <font color="#FF0000">Mensagem de erro</font></td></tr>

            </table>  
			</form> 
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
        <h1>Solicita&ccedil;&atilde;o de abertura de conta</h1>
        <div class="content_item">
 
          
         
         
         
         <jsp:include page="formClienteUsuario.jsp" flush="true"/>
		</div>
      </div>
        </div>
    <footer>
      <p><a href="index.html">Home</a> | <a href="examples.html">ABRIR CONTA</a> | <a href="page.html">CONTA E SERVI&Ccedil;OS</a> | <a href="another_page.html">EMPR&Eacute;STIMOS</a> | <a href="contact.php">PAGAMENTOS</a></p>
      <p>Copyright &copy; BANCO TADS | Jonathan costa/val&eacute;ria pedro</p>
    </footer>
</div>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script><script type="text/javascript" src="js/jquery.easing-sooper.js"></script><script type="text/javascript" src="js/jquery.sooperfish.js"></script><script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>