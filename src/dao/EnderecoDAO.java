package dao;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Endereco;
import jdbc.ConnectionFactory;

public class EnderecoDAO {
	
	private Connection connection = null ;
	
	public EnderecoDAO(){
		
		try{
			this.connection = new ConnectionFactory().getConnection() ;
		}catch(SQLException e){
			throw new RuntimeException(e) ;
		}
		
	}//Fecha construtor	
	
	public boolean cadastrarEnd(Endereco e){
		
		String sql = "INSERT INTO endereco (cep, cidade, siglauf, bairro, complemento, logradouro, tipomoradia, temporesidencia) VALUES (?,?,?,?,?,?,?,?)" ;
		
		try{
			
			PreparedStatement stmt = connection.prepareStatement(sql) ;
			
			 stmt.setString(1, e.getCep()) ;
	         stmt.setString(2, e.getCidade()) ;
	         stmt.setString(3, e.getSiglauf()) ;
	         stmt.setString(4, e.getBairro()) ;
	         stmt.setString(5, e.getComplemento()) ;
	         stmt.setString(6, e.getLogradouro()) ;
	         stmt.setString(7, e.getTipoMoradia()) ;
	         stmt.setInt(8, e.getTemporesidencia()) ;
			
	         stmt.execute() ;
	         stmt.close() ;
	            
	         return true ; //Retorna verdadeiro caso a inserção seja bem sucedida
	         
		}catch(SQLException e1){
			return false ;
		}catch(Exception e2){
			return false ;
		}
		
	}//Fecha cadastrarEnd
	
	public int getMaxId(){
		
		int id = 0 ;
		
		String sql = "select max(idendereco) from endereco" ;
		
		Statement stmt = null ;
        ResultSet rs = null ;
        
        try{
            
        	stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;
            
            while(rs.next()){
            	id = rs.getInt(1) ;
            }
        }catch(SQLException e){
        	
        }
		
		return id ;
	}
	
}//Fecha classe
