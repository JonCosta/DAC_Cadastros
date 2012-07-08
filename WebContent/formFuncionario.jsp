<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML>
<html>
<head>
<title>Banco TADS</title>
<meta name="description" content="website description">
<meta name="keywords" content="website keywords, website keywords">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" id="theme" href="css/style.css">
<script type="text/javascript" src="http://cidades-estados-js.googlecode.com/files/cidades-estados-1.2-utf8.js"></script>
<link rel="stylesheet" type="text/css" id="theme" href="css/style.css">
<link rel="stylesheet" type="text/css" id="theme" href="css/dropdown.css">

	<script type="text/javascript" src="js/helpers.js"></script>
	<script type="text/javascript" src="js/date.js"></script>
	<script type="text/javascript" src="js/form.js"></script>
	
	
<!-- modernizr enables HTML5 elements and feature detects --><script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
<style type="text/css">
body,td,th {
	font-size: 0.8em;
	color: #CCCCCC;
}
</style>
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
        
        
        
        
                <% 
        String loginsessao = (String)session.getAttribute("login");
        if (loginsessao	 != null){
        	loginsessao = "Você efetuou login como "+loginsessao+" - Area Restrita <a href='logoff.jsp'>Sair</a>";
        	%><b> <font color="#FFB90F"><%= loginsessao %></font></b><%
        }
        	
        %> 
         
         
         
         
         
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
        <h1>Cadastro de Funcionário</h1>
        <div class="content_item">


	
	<script type="text/javascript">
	window.onload = function() {
	  new dgCidadesEstados({
	    estado: document.getElementById('estado'),
	    cidade: document.getElementById('cidade')
	  });
	}
	</script>

	<form action="cadastraFuncionario.jsp" method="post">
    <div class="form_settings">
		<p>Por favor, preencha os campos a seguir:</p>
		<fieldset class="contact">
			<legend>Dados pessoais</legend>
			
				<p><span>Primeiro nome :</span> <input type="text" id="primeironome" name="primeironome" /></p>
			
				<p><span>Ultimo nome :</span> <input type="text" id="ultimonome" name="ultimonome"/></p>
			
				<p><span>CPF :</span> <input type="text" id="cpf" name="cpf"/></p>
			
				<p><span>Tipo doc :</span>
				<select name="tipodoc" >
					<option value="RG">RG</option>
					<option value="Certidï¿½o de Nascimento">CertidÃ£o de nascimento</option>
					<option value="Outro">Outro...</option>
				</select></p>
			
				<p><span>Num. doc :</span>
				  <input type="text" id="numodoc" name="numdoc" /></p>
			
				<p><span>Emissor :</span><input type="text" id="emissor" name="emissor" size="7" /></p>
			
				<p><span>Data Emissao :</span><input type="text" id="dtemissao" name="dtemissao" /></p>
			
		<p>
        <span>Sexo :</span>
						<input type="radio" class="radio"  id="male" name="sexo" value="Masculino"/>Masc 
					
						<input type="radio" class="radio" id="female" name="sexo" value="Feminino"/>Fem
				
				
        </p>
			
				<p><span>Data de Nascimento :</span><input type="text" id="dtnascimento" name="dtnascimento" /></p>
			 <p><span>Email :</span><input type="text" id="email" name="email" class="email"></p>
			
		  <p><span>Estado Civil</span>
				<select name="estciv">
					<option value="solteiro">Solteiro</option>
					<option value="casado">Casado</option>
					<option value="divorciado">Divorciado</option>
					<option value="viuvo">Viï¿½vo</option>
				</select>
		  </p>
		  <p><span>Conjuge</span> <input type="text" name="conjuge"/>
		  </p>
		  <p><span>Telefone</span><input type="text" name="telefone"/>
		  </p>
		  <p><span>Nacionalidade</span><input type="text" name="nacionalidade"/>
		  </p>
		  <p><span>Naturalidade</span><input type="text" name="naturalidade"/>
		  </p>
		  <p><span>Capacidade Civil</span>
				<select name="capciv">
					<option value="Maior">Maior</option>
					<option value="Menor">Menor</option>
					<option value="Nec. Especiais">Nec. Especiais</option>
					
				</select>
		  </p>
		  <p><span>Nome do pai</span><input type="text" name="nomepai"/>
		  </p>
		  <p><span>Nome da mae</span><input type="text" name="nomemae"/>
		  </p>
		</fieldset>
		<fieldset class="login">
			<legend>Dados de Endereco</legend>
			
		  <p><span>CEP</span> <input type="text" id="cep" name="cep">
		  </p>
		  <p><span>Estado</span>
				<select id="estado" name="estado"></select></p>
				
		  <p><span>Cidade</span>
				<select id="cidade" name="cidade"></select></p>
			
		  <p><span>Bairro</span> <input type="text" id="bairro" name="bairro"></p>
			
		  <p><span>Complemento</span> <input type="text" id="complemento" name="complemento"></p>
			
				<p><span>Logradouro</span> <input type="text" id="logradouro" name="logradouro"></p>
			
		  <p><span>Tipo de Residencia</span>
				<select name="tipores">
					<option value="residencia">Residencia</option>
					<option value="apartamento">Apartamento</option>
					<option value="outro">Outro...</option>
				</select></p>
			
		  <p><span>Tempo de Residencia</span> <input type="text" id="tempores" name="tempores" ></p>
			
	  </fieldset>	
		<fieldset>		
			<legend>Dados profissionais</legend>
			<p>	
				<span>Cargo</span><input type="text" name="cargo" size="30"/>
			</p>
			<p>
				<span>Nível do Cargo</span><input type="text" name="nivelcargo" size="7"/>
			</p>
			<p>
				<span>Departamento</span><input type="text" name="departamento" size="30"/>
			</p>
			<p>
				<span>Renda Mensal</span><input type="text" name="renda"/>
			</p>
		</fieldset>
		
		<fieldset class="login">
			<legend>Dados de logon</legend>
			<p><span>Nome de usuário</span> <input type="text" id="username" name="username"/></p>
			
			<p><span>Senha</span> <input type="password" id="password" name="senha"/></p>
			
			<p><span>Redigite a senha</span> <input type="password" id="senha2" name="senha2"/></p>
			
		</fieldset>

		

		
		<p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="name" value="Enviar"></p>
      </div>
	</form>
	
	
	
	
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








































