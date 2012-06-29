package modelo;

public class Endereco {
	
	private int idEndereco, temporesidencia ;
	private String logradouro, cep, complemento, bairro, tipoMoradia, cidade, siglauf ;
	
	//Construtor
	public Endereco(String cep, String cidade, String siglauf, String bairro, String logradouro, String complemento, String tipoMoradia, int temporesidencia){
		
		this.cep = cep;
		this.cidade = cidade ;
		this.siglauf = siglauf ;
		this.bairro = bairro ;
		this.logradouro = logradouro ;
		this.complemento = complemento ;
		this.tipoMoradia = tipoMoradia ;
		this.temporesidencia = temporesidencia ;
		
	}//Fecha Endereco()

	
	/*GETTERS E SETTERS*/
	public String getCidade() {
		return cidade;
	}


	public void setCidade(String cidade) {
		this.cidade = cidade;
	}


	public String getSiglauf() {
		return siglauf;
	}


	public void setSiglauf(String siglauf) {
		this.siglauf = siglauf;
	}


	public int getIdEndereco() {
		return idEndereco;
	}
	public void setIdEndereco(int idEndereco) {
		this.idEndereco = idEndereco;
	}
	public int getTemporesidencia() {
		return temporesidencia;
	}
	public void setTemporesidencia(int temporesidencia) {
		this.temporesidencia = temporesidencia;
	}
	public String getLogradouro() {
		return logradouro;
	}
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getTipoMoradia() {
		return tipoMoradia;
	}
	public void setTipoMoradia(String tipoMoradia) {
		this.tipoMoradia = tipoMoradia;
	}
	
}//Fecha Classe