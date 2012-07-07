<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<script type="text/javascript" src="http://cidades-estados-js.googlecode.com/files/cidades-estados-1.2-utf8.js"></script>
<link rel="stylesheet" type="text/css" id="theme" href="css/style.css">
<link rel="stylesheet" type="text/css" id="theme" href="css/dropdown.css">
	
	

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
	
	<form action="cadastrarCliente.jsp" method='post'>
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
					<option value="Certid�o de Nascimento">Certidão de nascimento</option>
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
					<option value="viuvo">Vi�vo</option>
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
			<legend>Dados de Endere�o</legend>
			
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
			
		  <p><span>Tempo de Residencia</span> <input type="text" id="tempores" name="tempores"></p>
			
	  </fieldset>
		<fieldset>		
				<legend>Dados profissionais</legend>
		  <p><span>Ocupacao</span><input type="text" name="ocupacao" size="30"/></p>
			
		  <p><span>Inicio da Ocupacao</span><input type="text" name="inicioocupa" size="7"/></p>
			
		  <p><span>Empregador</span><input type="text" name="empregador" size="30"/></p>
			
		  <p><span>Renda Mensal</span><input type="text" name="renda"/></p>
		</fieldset>	

		

		
		<p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="name" value="Enviar"></p>
      </div>
	</form>






