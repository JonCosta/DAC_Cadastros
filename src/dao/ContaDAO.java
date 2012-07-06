package dao;

//Pacotes de importa��o
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.SQLException;

import modelo.Conta;
import modelo.DashBoardUsuario;


import com.mysql.jdbc.exceptions.* ;

import jdbc.ConnectionFactory;

public class ContaDAO {

private Connection connection = null ;
	
	public ContaDAO(){
		
		try{
			this.connection = new ConnectionFactory().getConnection1() ;
		}catch(SQLException e){
			throw new RuntimeException(e) ;
		}
		
	}//Fecha construtor
	
	//retorna objeto Conta passando idusuario como parametro
	public Conta buscarContaUsuario(int idusuario) throws SQLException{
					
				String sql="select idcc, saldo, limite from conta where conta.idusuario ="+idusuario;
				Conta conta = null;
					
			    Statement stmt = null;
			    try{
			          //cria��o do 'canal sql'
			          stmt = connection.createStatement();
			           
			     }
			     catch(SQLException e){
			           System.out.println("ERRO: cria��o do 'canal' statement com mysql");
			           System.out.println( e.getMessage() ) ; 
			      }                
			        
			      //solicita��o da execu��o da consulta sql
			      ResultSet rs = null ;
			      try{
			          rs = stmt.executeQuery(sql);
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
			       		 	int idcc = rs.getInt("idusuario");
			       		 	float saldo = rs.getFloat("saldo") ;
							float limite = rs.getFloat("limite") ;
							
							conta = new Conta ();
							return conta;
								//return achou ;
							}//Fecha if
						      
			        }
			        catch(SQLException e){
			       	 		System.out.println("ERRO: obten��o de dados do ResultSet");
			       	 		System.out.println( e.getMessage() ) ;
			        }
			        connection.close();
			        rs.close();
			        stmt.close();
			        
			        return conta;   
				
				}//Fecha buscarConta
	
	
	
}
