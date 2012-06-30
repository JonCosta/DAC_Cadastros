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
	
public Endereco getEndereco(int i){
		
		String sql = "select cep, cidade, siglauf, temporesidencia, complemento, bairro, logradouro, tipomoradia from endereco where idendereco = "+i ;
		Statement stmt = null ;
        ResultSet rs = null ;
        
        String cep = "", cidade = "", siglauf = "", tipomoradia = "", bairro = "", logradouro = "", complemento = "";
        int tempores = 0;
        
        Endereco e = new Endereco(cep, cidade, siglauf, bairro, logradouro, complemento, tipomoradia, tempores) ;
        
        try{
        	
        	stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;            
            
            while(rs.next()){
           
            	e.setCep(rs.getString(1)) ;
            	e.setCidade(rs.getString(2)) ;
            	e.setSiglauf(rs.getString(3)) ;
            	e.setTemporesidencia(rs.getInt(4)) ;
            	e.setComplemento(rs.getString(5)) ;
            	e.setBairro(rs.getString(6)) ;
            	e.setLogradouro(rs.getString(7)) ;
            	e.setTipoMoradia(rs.getString(8)) ;
            	
            }//Fecha while
            
            return e ;

        }catch(SQLException e1){
        	System.out.println(e1.getMessage());
        	return null ;
        }
        
	}//Fecha getUsuario
	
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
