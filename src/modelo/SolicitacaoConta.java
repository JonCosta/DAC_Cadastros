package modelo;

public class SolicitacaoConta {
	
	private int cod, idcliente ;
	private String situacao ;
	
	public SolicitacaoConta(){
		
	}//Fecha construtor
	
	public SolicitacaoConta(int cod, int idcliente, String situacao){
		
		this.cod = cod ;
		this.idcliente = idcliente ;
		this.situacao = situacao ;
		
	}//Fecha construtor com atributos
	
	
	/*MÉTODOS GETTER E SETTER*/
	public int getCod() {
		return cod;
	}

	public void setCod(int cod) {
		this.cod = cod;
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
	
	
	
	
}//Fecha classe