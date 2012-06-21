package modelo;

public class Conta {

	private String idcc, situacao, numero ;
	private float saldo, limite ;
	
	public Conta(){
		
	}//Fecha Conta()
	
	
	//Função de Depósito
	public boolean depositarFundos(float valor){
		
		if((this.saldo+=valor) > this.limite){ //verifica se valor depositado excederá o limite quando adicionado
			return false ;
		}
		else{
			this.saldo += valor ;
			return true ;
		}
		
	}//Fecha depositarFundos
	
	//Função de Saque
	public boolean sacarFundos(float valor){
		
		if(valor > this.saldo){ //verifica se o valor sacado é maior que o saldo atual
			return false ;
		}
		else{
			return true ;
		}
		
	}//Fecha sacarFundos
	
	//Função para transferir fundos de uma conta a outra
	public boolean transferir (Conta c, float valor){
		
		if(valor > this.saldo){ //Verifica se há saldo o suficiente para fazer a transferência
			return false ;
		}
		else{
			if((c.saldo+valor) > c.limite){ //Verifica se saldo resultante da conta 'alvo' será maior que o limite
				return false ;
			}
			else {
				c.saldo += valor ;
				this.saldo -= valor ;
				return true ;
			}
		}
		
	}//Fecha transferir
	
	
	/*FUNÇÕES GETTER E SETTER*/
	public String getIdcc() {
		return idcc;
	}
	
	public void setIdcc(String idcc) {
		this.idcc = idcc;
	}
	
	public String getSituacao() {
		return situacao;
	}
	
	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
	
	public String getNumero() {
		return numero;
	}
	
	public void setNumero(String numero) {
		this.numero = numero;
	}
	
	public float getSaldo() {
		return saldo;
	}
	
	public void setSaldo(float saldo) {
		this.saldo = saldo;
	}
	
	public float getLimite() {
		return limite;
	}
	
	public void setLimite(float limite) {
		this.limite = limite;
	}
	
	
	
}//Fecha classe
