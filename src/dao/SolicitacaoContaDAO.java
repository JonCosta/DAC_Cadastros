package dao;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.SolicitacaoConta ;
import jdbc.ConnectionFactory;

public class SolicitacaoContaDAO {
	
	private Connection connection = null ;
	
	public SolicitacaoContaDAO() {
		try{
			this.connection = new ConnectionFactory().getConnection() ;
		}catch(SQLException e){
			throw new RuntimeException(e) ;
		}
	}//Fecha construtor
	
	public boolean cadastrarSolicitacao(SolicitacaoConta sc){
		
		String sql = "INSERT INTO solicitacao (idcliente, situacao) VALUES (?, ?)" ;
		
		try{
			
			PreparedStatement stmt = connection.prepareStatement(sql) ;
			
			 stmt.setInt(1, sc.getIdcliente()) ;
	         stmt.setString(2, sc.getSituacao()) ;
			
	         stmt.execute() ;
	         stmt.close() ;
	            
	         return true ; //Retorna verdadeiro caso a inserção seja bem sucedida
	         
		}catch(SQLException e1){
			return false ;
		}catch(Exception e2){
			return false ;
		}
		
	}//Fecha cadastrar
	
	public boolean editarSolicitacao(SolicitacaoConta sc){

		String sql = "UPDATE solicitacao SET idcliente = ? , situacao = ?" ;
		
		try{
			
			PreparedStatement stmt = connection.prepareStatement(sql) ;
			
			 stmt.setInt(1, sc.getIdcliente()) ;
	         stmt.setString(2, sc.getSituacao()) ;
			
	         stmt.execute() ;
	         stmt.close() ;
	            
	         return true ; //Retorna verdadeiro caso a inserção seja bem sucedida
	         
		}catch(SQLException e1){
			return false ;
		}catch(Exception e2){
			return false ;
		}
		
	}//Fecha editar
	
	public boolean excluirSolicitacao(int i){
		
		String sql = "DELETE FROM solicitacao WHERE cod = ?" ;
		
		try{
			
			PreparedStatement stmt = connection.prepareStatement(sql) ;
			
			 stmt.setInt(1, i) ;
			
	         stmt.execute() ;
	         stmt.close() ;
	            
	         return true ; //Retorna verdadeiro caso a inserção seja bem sucedida
	         
		}catch(SQLException e1){
			return false ;
		}catch(Exception e2){
			return false ;
		}
	}//Fecha excluir
	
	public String listarSolicitacoes(){
		
		String sql = "SELECT u.nome, sc.situacao, sc.cod FROM solicitacao sc INNER JOIN usuario u ON sc.idcliente = u.idusuario" ;
		
		Statement stmt = null ;
        ResultSet rs = null ;
        String tabela = "" ;
        
        try{
        	
        	stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;
            
            tabela = "<tr>" +
			"<th>Cliente</th>" +
			"<th>Situação da Solicitação</th>" +
			"<th>Editar</th>" +
			"<th>Excluir</th>" +
			"</tr>" ; 
            
            while(rs.next()){
            	tabela +=
            		"<tr><th>"+rs.getObject(1)+"</th>"+
            		"<th>"+rs.getObject(2)+"</th>" +
            		"<th><form action='formEditarCliente.jsp' method='post'>" +
            				"<input name='id' type='hidden' value='"+rs.getInt(3)+"'/><input type='submit' value='Editar'/></form>" +
            		"</th>" +
            		"<th><form action='excluirUsuario.jsp' method='post' onsubmit='return confirma()';>" +
            				"<input name='id' type='hidden' value='"+rs.getInt(3)+"'/><input type='submit' value='Excluir'/></form>" +
            		"</th></tr>";
            }
        }catch(SQLException e){
        	
        }
        
        return tabela ;
        
	}//Fecha listar
	
}//Fechar classe