package dao;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import modelo.SolicitacaoConta ;
import jdbc.ConnectionFactory;

public class SolicitacaoContaDAO {
	
	private Connection connection = null ;
	
	public SolicitacaoContaDAO() {
		try{
			this.connection = new ConnectionFactory().getConnection1() ;
		}catch(SQLException e){
			throw new RuntimeException(e) ;
		}
	}//Fecha construtor
	
	public boolean cadastrarSolicitacao(SolicitacaoConta sc, String data){
		
		String sql = "INSERT INTO solicitacao (idcliente, situacao, datasolicitao) VALUES (?, ?, ?)" ;
		
		try{
			
			PreparedStatement stmt = connection.prepareStatement(sql) ;
			
			 stmt.setInt(1, sc.getIdcliente()) ;
	         stmt.setString(2, sc.getSituacao()) ;
	         stmt.setString(3, data) ;
			
	         stmt.execute() ;
	         stmt.close() ;
	            
	         return true ; //Retorna verdadeiro caso a inser��o seja bem sucedida
	         
		}catch(SQLException e1){
			return false ;
		}catch(Exception e2){
			return false ;
		}
		
	}//Fecha cadastrar
	
	public boolean editarSolicitacao(SolicitacaoConta sc){

		String sql = "UPDATE solicitacao SET idcliente = ? , situacao = ? where cod = ?" ;
		
		try{
			
			PreparedStatement stmt = connection.prepareStatement(sql) ;
			
			 stmt.setInt(1, sc.getIdcliente()) ;
	         stmt.setString(2, sc.getSituacao()) ;
	         stmt.setInt(3, sc.getCod()) ;
			
	         stmt.execute() ;
	         stmt.close() ;
	            
	         return true ; //Retorna verdadeiro caso a inser��o seja bem sucedida
	         
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
	            
	         return true ; //Retorna verdadeiro caso a inser��o seja bem sucedida
	         
		}catch(SQLException e1){
			return false ;
		}catch(Exception e2){
			return false ;
		}
	}//Fecha excluir
	
	public String listarSolicitacoes(){
		
		String sql = "SELECT u.nome, sc.situacao, sc.datasolicitacao, sc.idsolicitacao FROM solicitacao sc INNER JOIN usuario u ON sc.idcliente = u.idendereco WHERE sc.situacao = 'Aberta'" ;
		
		Statement stmt = null ;
        ResultSet rs = null ;
        String tabela = "" ;
        
        try{
        	
        	stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;
            
            tabela = "<tr>" +
			"<th>Cliente</th>" +
			"<th>Situa��o da Solicita��o</th>" +
			"<th>Data da Solicita��o</th>" +
			"</tr>" ; 
            
            while(rs.next()){
            	tabela +=
            		"<tr><th>"+rs.getObject(1)+"</th>"+
            		"<th>"+rs.getObject(2)+"</th>" +
            		"<th>"+rs.getObject(3)+"</th>" +
            		"<th><form action='autorizarSolicitacao.jsp' method='post' onsubmit='return confirma();'>" +
            				"<input name='id' type='hidden' value='"+rs.getInt(4)+"'/><input type='submit' value='Autorizar'/></form>" +
            		"</th></tr>";
            }
        }catch(SQLException e){
        	e.printStackTrace() ;
        }
        
        return tabela ;
        
	}//Fecha listar
	
	public boolean autorizarSolicitacao(int id){
	
		String sql = "UPDATE solicitacao SET situacao = 'Autorizada' WHERE idsolicitacao = ?" ;
		
		try{
			
			PreparedStatement stmt = connection.prepareStatement(sql) ;
			
			 stmt.setInt(1, id) ;
			
	         stmt.execute() ;
	         stmt.close() ;
	         
		}catch(SQLException e1){
			return false ;
		}catch(Exception e2){
			return false ;
		}
		
		int idcliente = getIdSolic(id) ;
		
		sql = "UPDATE usuario SET situacao = 1 WHERE idusuario = ?" ;
		
		try{
			
			PreparedStatement stmt = connection.prepareStatement(sql) ;
			
			 stmt.setInt(1, idcliente) ;
			
	         stmt.execute() ;
	         stmt.close() ;
	         
	         return true ;
	         
		}catch(SQLException e1){
			return false ;
		}catch(Exception e2){
			return false ;
		}
		
	}
	
	public int getIdSolic(int id){
		
		String sql = "SELECT idcliente FROM solicitacao WHERE idsolicitacao = "+id ;
		ResultSet rs = null ;
		Statement stmt = null ;
		int idcliente = 0 ;
		
		try{
        	
        	stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;
            
            while(rs.next()){
            	idcliente = rs.getInt(1) ;
            }
            
            return idcliente ;
            
		}catch(SQLException e1){
			e1.printStackTrace() ;
			return 0 ;
		}catch(Exception e){
			e.printStackTrace() ;
			return 0 ;
		}
	
	}//Fecha get
	
}//Fechar classe