package modelo;

public class Usuario {
	
	private int idcliente, idendereco ;
	private String cpf, nome, numTelefone, nomepai, nomemae, tipodoc, numdoc, emissor, dataNasc, dtEmiss, naturalidade, nacionalidade ;
	private String estadocivil, conjuge, capacidadecivil, ocupacao, inicioocupacao, cargo, nivelcargo, email ;
	private String empregador, nomeUsuario, senhaUsuario, tipoUsuario , sexo, departamento ;
	private float renda ;
	private boolean isFuncionario ;
	private String situacao;
	
	
	public Usuario() {
		
	}
	//construtor com 'situacao'
	public Usuario(int idendereco, String nome, String cpf, String tipodoc, String numdoc, String emissor, String dtEmiss, String sexo, String dataNasc,
			String estadocivil, String email, String conjuge, String nomepai, String nomemae, String telefone, String nacionalidade, String naturalidade, 
			String capacidadecivil, String ocupacao, String inicioocuapcao, String empregador, float renda, String nomeUsuario, String senhaUsuario, 
			boolean isFuncionario, String situacao ){
		
		this.idendereco = idendereco;
		this.nome = nome ;
		this.cpf = cpf ;
		this.tipodoc = tipodoc ;
		this.numdoc = numdoc ;
		this.emissor = emissor ;
		this.dtEmiss = dtEmiss ;
		this.sexo = sexo ;
		this.dataNasc = dataNasc ;
		this.estadocivil = estadocivil ;
		this.email = email ;
		this.conjuge = conjuge ;
		this.nomepai = nomepai ;
		this.nomemae = nomemae ;
		this.numTelefone = telefone ;
		this.nacionalidade = nacionalidade ;
		this.naturalidade = naturalidade ;
		this.capacidadecivil = capacidadecivil ;
		this.ocupacao = ocupacao ;
		this.inicioocupacao = inicioocuapcao ;
		this.empregador = empregador ;
		this.renda = renda ;
		this.nomeUsuario = nomeUsuario ;
		this.senhaUsuario = senhaUsuario ;
		this.isFuncionario = isFuncionario ;
		this.situacao = situacao;
		
	}//Fecha usuario
	
	//construtor sem 'situacao'
		public Usuario(int idendereco, String nome, String cpf, String tipodoc, String numdoc, String emissor, String dtEmiss, String sexo, String dataNasc,
				String estadocivil, String email, String conjuge, String nomepai, String nomemae, String telefone, String nacionalidade, String naturalidade, 
				String capacidadecivil, String ocupacao, String inicioocuapcao, String empregador, float renda, String nomeUsuario, String senhaUsuario, 
				boolean isFuncionario ){
			
			this.idendereco = idendereco;
			this.nome = nome ;
			this.cpf = cpf ;
			this.tipodoc = tipodoc ;
			this.numdoc = numdoc ;
			this.emissor = emissor ;
			this.dtEmiss = dtEmiss ;
			this.sexo = sexo ;
			this.dataNasc = dataNasc ;
			this.estadocivil = estadocivil ;
			this.email = email ;
			this.conjuge = conjuge ;
			this.nomepai = nomepai ;
			this.nomemae = nomemae ;
			this.numTelefone = telefone ;
			this.nacionalidade = nacionalidade ;
			this.naturalidade = naturalidade ;
			this.capacidadecivil = capacidadecivil ;
			this.ocupacao = ocupacao ;
			this.inicioocupacao = inicioocuapcao ;
			this.empregador = empregador ;
			this.renda = renda ;
			this.nomeUsuario = nomeUsuario ;
			this.senhaUsuario = senhaUsuario ;
			this.isFuncionario = isFuncionario ;
			
			
		}//Fecha usuario
	
	public Usuario(int idusuario, int idendereco, String nome, String cpf, String tipodoc, String numdoc, String emissor, String dtEmiss, String sexo, String dataNasc,
			String estadocivil, String email, String conjuge, String nomepai, String nomemae, String telefone, String nacionalidade, String naturalidade, 
			String capacidadecivil, String ocupacao, String inicioocuapcao, String empregador, float renda, String nomeUsuario, String senhaUsuario, 
			boolean isFuncionario ){
		this.idcliente = idusuario ;
		this.idendereco = idendereco;
		this.nome = nome ;
		this.cpf = cpf ;
		this.tipodoc = tipodoc ;
		this.numdoc = numdoc ;
		this.emissor = emissor ;
		this.dtEmiss = dtEmiss ;
		this.sexo = sexo ;
		this.dataNasc = dataNasc ;
		this.estadocivil = estadocivil ;
		this.email = email ;
		this.conjuge = conjuge ;
		this.nomepai = nomepai ;
		this.nomemae = nomemae ;
		this.numTelefone = telefone ;
		this.nacionalidade = nacionalidade ;
		this.naturalidade = naturalidade ;
		this.capacidadecivil = capacidadecivil ;
		this.ocupacao = ocupacao ;
		this.inicioocupacao = inicioocuapcao ;
		this.empregador = empregador ;
		this.renda = renda ;
		this.nomeUsuario = nomeUsuario ;
		this.senhaUsuario = senhaUsuario ;
		this.isFuncionario = isFuncionario ;
		
	}//Fecha usuario
	
	//sem idusuario / com situacao
	public Usuario(int idendereco, String nome, String cpf, String tipodoc, String numdoc, String emissor, String dtEmiss, String sexo, String dataNasc,
			String estadocivil, String email, String conjuge, String nomepai, String nomemae, String telefone, String nacionalidade, String naturalidade, 
			String capacidadecivil, float renda, String cargo, String nivelcargo, String departamento, String nomeUsuario, String senhaUsuario, 
			boolean isFuncionario){
		
		this.idendereco = idendereco;
		this.nome = nome ;
		this.cpf = cpf ;
		this.tipodoc = tipodoc ;
		this.numdoc = numdoc ;
		this.emissor = emissor ;
		this.dtEmiss = dtEmiss ;
		this.sexo = sexo ;
		this.dataNasc = dataNasc ;
		this.estadocivil = estadocivil ;
		this.email = email ;
		this.conjuge = conjuge ;
		this.nomepai = nomepai ;
		this.nomemae = nomemae ;
		this.numTelefone = telefone ;
		this.nacionalidade = nacionalidade ;
		this.naturalidade = naturalidade ;
		this.capacidadecivil = capacidadecivil ;
		this.cargo = cargo ;
		this.nivelcargo = nivelcargo ;
		this.departamento = departamento ;
		this.renda = renda ;
		this.nomeUsuario = nomeUsuario ;
		this.senhaUsuario = senhaUsuario ;
		this.isFuncionario = isFuncionario ;
		
		
	}//Fecha usuario
	
	

	public String getInicioocupacao() {
		return inicioocupacao;
	}

	public void setInicioocupacao(String inicioocupacao) {
		this.inicioocupacao = inicioocupacao;
	}


	public int getIdendereco() {
		return idendereco;
	}



	public void setIdendereco(int idendereco) {
		this.idendereco = idendereco;
	}



	public String getNumTelefone() {
		return numTelefone;
	}

	public String getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(String dataNasc) {
		this.dataNasc = dataNasc;
	}

	public String getDtEmiss() {
		return dtEmiss;
	}

	public void setDtEmiss(String dtEmiss) {
		this.dtEmiss = dtEmiss;
	}

	public void setNumTelefone(String numTelefone) {
		this.numTelefone = numTelefone;
	}

	public boolean isFuncionario() {
		return isFuncionario;
	}

	public void setFuncionario(boolean isFuncionario) {
		this.isFuncionario = isFuncionario;
	}
	
	public int getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNomepai() {
		return nomepai;
	}

	public void setNomepai(String nomepai) {
		this.nomepai = nomepai;
	}

	public String getNomemae() {
		return nomemae;
	}

	public void setNomemae(String nomemae) {
		this.nomemae = nomemae;
	}

	public String getTipodoc() {
		return tipodoc;
	}

	public void setTipodoc(String tipodoc) {
		this.tipodoc = tipodoc;
	}

	public String getNumdoc() {
		return numdoc;
	}

	public void setNumdoc(String numdoc) {
		this.numdoc = numdoc;
	}

	public String getEmissor() {
		return emissor;
	}

	public void setEmissor(String emissor) {
		this.emissor = emissor;
	}

	public String getNaturalidade() {
		return naturalidade;
	}

	public void setNaturalidade(String naturalidade) {
		this.naturalidade = naturalidade;
	}

	public String getNacionalidade() {
		return nacionalidade;
	}

	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public String getEstadocivil() {
		return estadocivil;
	}

	public void setEstadocivil(String estadocivil) {
		this.estadocivil = estadocivil;
	}

	public String getConjuge() {
		return conjuge;
	}

	public void setConjuge(String conjuge) {
		this.conjuge = conjuge;
	}

	public String getCapacidadecivil() {
		return capacidadecivil;
	}

	public void setCapacidadecivil(String capacidadecivil) {
		this.capacidadecivil = capacidadecivil;
	}


	public String getOcupacao() {
		return ocupacao;
	}

	public void setOcupacao(String ocupacao) {
		this.ocupacao = ocupacao;
	}

	public String getNivelcargo() {
		return nivelcargo;
	}

	public void setNivelcargo(String nivelcargo) {
		this.nivelcargo = nivelcargo;
	}

	public String getEmpregador() {
		return empregador;
	}

	public void setEmpregador(String empregador) {
		this.empregador = empregador;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

	public String getSenhaUsuario() {
		return senhaUsuario;
	}

	public void setSenhaUsuario(String senhaUsuario) {
		this.senhaUsuario = senhaUsuario;
	}

	public String getTipoUsuario() {
		return tipoUsuario;
	}

	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public float getRenda() {
		return renda;
	}

	public void setRenda(float renda) {
		this.renda = renda;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getCargo() {
		return cargo;
	}


	public void setCargo(String cargo) {
		this.cargo = cargo;
	}


	public String getDepartamento() {
		return departamento;
	}


	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}


	
	
}//Fecha classe