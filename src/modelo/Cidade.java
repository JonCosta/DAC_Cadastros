package modelo;

public class Cidade {
	
	private int idCidade ;
	private String nomeCidade, siglaUF ;
	
	
	public Cidade(){
		
	}//Fecha Cidade()
	
	public int getIdCidade() {
		return idCidade;
	}
	
	public void setIdCidade(int idCidade) {
		this.idCidade = idCidade;
	}
	
	public String getNomeCidade() {
		return nomeCidade;
	}
	
	public void setNomeCidade(String nomeCidade) {
		this.nomeCidade = nomeCidade;
	}
	
	public String getSiglaUF() {
		return siglaUF;
	}
	
	public void setSiglaUF(String siglaUF) {
		this.siglaUF = siglaUF;
	}
	
}//Fecha classe