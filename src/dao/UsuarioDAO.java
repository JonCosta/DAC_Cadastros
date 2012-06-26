package dao;

//Pacotes de importação
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
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
	
	
	public String listarClientes(){
		
		String sql = "SELECT nome, cpf, tipodoc, numdoc, numtelefone, sexo, datanasc, estadocivil FROM usuario where isfuncionario = false" ;
		
		Statement stmt = null ;
        ResultSet rs = null ;
        String tabela = "" ;
        
        try{
        	
        	stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;
            
            while(rs.next()){
            	tabela +=
            		"<tr><th>"+rs.getObject(1)+"</th>"+
            		"<th>"+rs.getObject(2)+"</th>" +
            		"<th>"+rs.getObject(3)+"</th>" +
            		"<th>"+rs.getObject(4)+"</th>" +
            		"<th>"+rs.getObject(5)+"</th>" +
            		"<th>"+rs.getObject(6)+"</th>" +
            		"<th>"+rs.getObject(7)+"</th>" +
            		"<th>"+rs.getObject(8)+"</th>"+
            		"<th><input type='submit' value='Editar'/>" +
            		"</th><th><input type='submit' value='Excluir'/>" +
            		"</th></tr>";
            }
        }catch(SQLException e){
        	
        }
        
        return tabela ;
        
	}//Fecha ListarClientes()
	
public String listarFuncionarios(){
		
		String sql = "SELECT nome, cpf, tipodoc, numdoc, numtelefone, sexo, datanasc, " +
				"estadocivil, cargo, departamento FROM usuario where isfuncionario = true" ;
		
		Statement stmt = null ;
        ResultSet rs = null ;
        String tabela = "" ;
        
        try{
        	
        	stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;
            
            while(rs.next()){
            	tabela +=
            		"<tr><th>"+rs.getObject(1)+"</th>"+
            		"<th>"+rs.getObject(2)+"</th>" +
            		"<th>"+rs.getObject(3)+"</th>" +
            		"<th>"+rs.getObject(4)+"</th>" +
            		"<th>"+rs.getObject(5)+"</th>" +
            		"<th>"+rs.getObject(6)+"</th>" +
            		"<th>"+rs.getObject(7)+"</th>" +
            		"<th>"+rs.getObject(8)+"</th>"+
            		"<th>"+rs.getObject(9)+"</th>"+
            		"<th>"+rs.getObject(10)+"</th>"+
            		"<th><input type='submit' value='Editar'/>" +
            		"</th><th><input type='submit' value='Excluir'/>" +
            		"</th></tr>";
            }
        }catch(SQLException e){
        	
        }
        
        return tabela ;
        
	}//Fecha Listar()
	
	public boolean verificarUsuario(Usuario u) throws SQLException{
		
		 String sql="select * from usuario where nomeUsuario =? and senhaUsuario = ?";
		 boolean achou = false;
        PreparedStatement pstmt = null;
        try{
            //criação do 'canal sql'
            pstmt = connection.prepareStatement(sql);
            // Ajuste de parâmetros pstmt
            pstmt.setString(1, u.getNomeUsuario());
            pstmt.setString(2, u.getSenhaUsuario());
        }
        catch(SQLException e){
            System.out.println("ERRO: criação do 'canal' statement com mysql");
            System.out.println( e.getMessage() ) ; 
        }                
        
        //solicitação da execução da consulta sql
        ResultSet rs = null ;
        try{
            rs = pstmt.executeQuery();
        }
        catch(MySQLSyntaxErrorException e){
            System.out.println("ERRO: sintaxe do SQL.");
            System.out.println( e.getMessage() ) ;
        }
        catch(SQLException e){
            System.out.println("ERRO: execução do SELECT em Usuario");
            System.out.println( e.getMessage() ) ;
        }


        // utilização do resultado
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
       	 System.out.println("ERRO: obtenção de dados do ResultSet");
       	 System.out.println( e.getMessage() ) ;
        }
        connection.close();
        rs.close();
        pstmt.close();
        
        return achou;   
	
	}//Fecha verificarUsuario
	
}//Fecha classe
