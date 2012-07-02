package modelo;

public class DashBoardUsuario {
	
	private int idcliente, situacao, idendereco ;
	private String cpf, nome, numTelefone, nomepai, nomemae, tipodoc, numdoc, emissor, dataNasc, dtEmiss, naturalidade, nacionalidade ;
	private String estadocivil, conjuge, capacidadecivil, ocupacao, inicioocupacao, cargo, nivelcargo, email ;
	private String empregador, nomeUsuario, senhaUsuario, tipoUsuario , sexo, departamento ;
	private float renda ;
	private boolean isFuncionario ;
	
	//construtor default
	public DashBoardUsuario() {
		//super();
	}
	
	//construtor com nome e senha
	public DashBoardUsuario(String nomeusuario, String senhausuario) {
		//super();
		this.nomeUsuario = nomeusuario;
		this.senhaUsuario = senhausuario;
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

	
	
	
}//Fecha classe