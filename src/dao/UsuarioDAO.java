package dao;

//Pacotes de importa��o
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mysql.jdbc.exceptions.* ;

import jdbc.ConnectionFactory;
import modelo.Usuario ;


public class UsuarioDAO {

private Connection connection = null ;
	
	public UsuarioDAO(){
		
		try{
			this.connection = new ConnectionFactory().getConnection() ;
		}catch(SQLException e){
			throw new RuntimeException(e) ;
		}
		
	}//Fecha construtor	
	
	
	public boolean verificarUsuario(Usuario u) throws SQLException{
		
		 String sql="select * from usuario where nomeUsuario =? and senhaUsuario = ?";
		 boolean achou = false;
        PreparedStatement pstmt = null;
        try{
            //cria��o do 'canal sql'
            pstmt = connection.prepareStatement(sql);
            // Ajuste de par�metros pstmt
            pstmt.setString(1, u.getNomeUsuario());
            pstmt.setString(2, u.getSenhaUsuario());
        }
        catch(SQLException e){
            System.out.println("ERRO: cria��o do 'canal' statement com mysql");
            System.out.println( e.getMessage() ) ; 
        }                
        
        //solicita��o da execu��o da consulta sql
        ResultSet rs = null ;
        try{
            rs = pstmt.executeQuery();
        }
        catch(MySQLSyntaxErrorException e){
            System.out.println("ERRO: sintaxe do SQL.");
            System.out.println( e.getMessage() ) ;
        }
        catch(SQLException e){
            System.out.println("ERRO: execu��o do SELECT em Usuario");
            System.out.println( e.getMessage() ) ;
        }


        // utiliza��o do resultado
        try{
       	 while(rs.next()){
       		String login = rs.getString("loginUser") ;
				String senha = rs.getString("senhaUser") ;
				
				if( (u.getNomeUsuario().equals(login))&&(u.getSenhaUsuario().equals(senha))){
					achou = true ;
					return achou ;
				}//Fecha if
			}//Fecha while       
        }
        catch(SQLException e){
       	 System.out.println("ERRO: obten��o de dados do ResultSet");
       	 System.out.println( e.getMessage() ) ;
        }
        connection.close();
        rs.close();
        pstmt.close();
        
        return achou;   
	
	}//Fecha verificarUsuario
	
}//Fecha classe
