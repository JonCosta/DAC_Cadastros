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
	
	
	//Função  para cadastro de cliente
	public boolean cadastrarCliente(Usuario u) {
		
		//Forma a SQL para inserção no BD
		
		String sql = "INSERT INTO usuario (nome, cpf, tipodoc, numdoc, emissor, dtemiss, sexo, datanasc, estadocivil, email, conjuge, nomepai, nomemae, numtelefone, nacionalidade, naturalidade, capacidadecivil, ocupacao, inicioocupacao, empregador, renda, nomeusuario, senhausuario, isfuncionario, idendereco) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" ;
		
		try{
            //Prepara a SQL com os valores do objeto Usuario recebido
			PreparedStatement stmt = connection.prepareStatement(sql) ;
			
            stmt.setString(1, u.getNome()) ;
            stmt.setString(2, u.getCpf()) ;
            stmt.setString(3, u.getTipodoc()) ;
            stmt.setString(4, u.getNumdoc()) ;
            stmt.setString(5, u.getEmissor()) ;
            stmt.setString(6, u.getDtEmiss()) ;
            stmt.setString(7, u.getSexo()) ;
            stmt.setString(8, u.getDataNasc()) ;
            stmt.setString(9, u.getEstadocivil()) ;
            stmt.setString(10, u.getEmail()) ;
            stmt.setString(11, u.getConjuge()) ;
            stmt.setString(12, u.getNomepai()) ;
            stmt.setString(13, u.getNomemae()) ;
            stmt.setString(14, u.getNumTelefone()) ;
            stmt.setString(15, u.getNacionalidade()) ;
            stmt.setString(16, u.getNaturalidade()) ;
            stmt.setString(17, u.getCapacidadecivil()) ;
            stmt.setString(18, u.getOcupacao()) ;
            stmt.setString(19, u.getInicioocupacao()) ;
            stmt.setString(20, u.getEmpregador()) ;
            stmt.setFloat(21, u.getRenda()) ;
            stmt.setString(22, u.getNomeUsuario()) ;
            stmt.setString(23, u.getSenhaUsuario()) ;
            stmt.setBoolean(24, false) ;
            stmt.setInt(25, u.getIdendereco()) ;
            
            stmt.execute() ;
            stmt.close() ;
            
            return true ; //Retorna verdadeiro caso a inserção seja bem sucedida
            
        }catch(SQLException e1){
        	return false ; //Retorna falso caso haja algum erro na SQL
        }catch(Exception e){
        	return false ; //Retorna erro caso haja algum outro erro
        }
		
	}//Fecha cadastrarCliente()
	
	public boolean cadastrarFuncionario(Usuario u){
		
		//Forma a SQL para inserção no BD
		
				String sql = "INSERT INTO usuario (nome, cpf, tipodoc, numdoc, emissor, dtemiss, sexo, datanasc, estadocivil, email, conjuge, nomepai, nomemae, numtelefone, nacionalidade, naturalidade, capacidadecivil, cargo, nivelcargo, departamento, renda, nomeusuario, senhausuario, isfuncionario, idendereco) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" ;
				
				try{
		            //Prepara a SQL com os valores do objeto Usuario recebido
					PreparedStatement stmt = connection.prepareStatement(sql) ;
					
		            stmt.setString(1, u.getNome()) ;
		            stmt.setString(2, u.getCpf()) ;
		            stmt.setString(3, u.getTipodoc()) ;
		            stmt.setString(4, u.getNumdoc()) ;
		            stmt.setString(5, u.getEmissor()) ;
		            stmt.setString(6, u.getDtEmiss()) ;
		            stmt.setString(7, u.getSexo()) ;
		            stmt.setString(8, u.getDataNasc()) ;
		            stmt.setString(9, u.getEstadocivil()) ;
		            stmt.setString(10, u.getEmail()) ;
		            stmt.setString(11, u.getConjuge()) ;
		            stmt.setString(12, u.getNomepai()) ;
		            stmt.setString(13, u.getNomemae()) ;
		            stmt.setString(14, u.getNumTelefone()) ;
		            stmt.setString(15, u.getNacionalidade()) ;
		            stmt.setString(16, u.getNaturalidade()) ;
		            stmt.setString(17, u.getCapacidadecivil()) ;
		            stmt.setString(18, u.getCargo()) ;
		            stmt.setString(19, u.getNivelcargo()) ;
		            stmt.setString(20, u.getDepartamento()) ;
		            stmt.setFloat(21, u.getRenda()) ;
		            stmt.setString(22, u.getNomeUsuario()) ;
		            stmt.setString(23, u.getSenhaUsuario()) ;
		            stmt.setBoolean(24, true) ;
		            stmt.setInt(25, u.getIdendereco()) ;
		            
		            stmt.execute() ;
		            stmt.close() ;
		            
		            return true ; //Retorna verdadeiro caso a inserção seja bem sucedida
		            
		        }catch(SQLException e1){
		        	return false ; //Retorna falso caso haja algum erro na SQL
		        }catch(Exception e){
		        	return false ; //Retorna erro caso haja algum outro erro
		        }
		
	}
	
	public String listarClientes(){
		
		String sql = "SELECT nome, cpf, tipodoc, numdoc, numtelefone, sexo, datanasc, estadocivil FROM usuario where isfuncionario = false" ;
		
		Statement stmt = null ;
        ResultSet rs = null ;
        String tabela = "" ;
        
        try{
        	
        	stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;
            
            tabela = "<tr>" +
			"<th>Nome</th>" +
			"<th>CPF</th>" +
			"<th>Tipo de Doc.</th>" +
			"<th>Núm. de Doc.</th>" +
			"<th>Telefone</th>" +
			"<th>Sexo</th>" +
			"<th>Data de Nasc.</th>" +
			"<th>Estado Civil</th>" +
			"<th>Editar</th>" +
			"<th>Excluir</th>" +
			"</tr>" ; 
            
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
	
	//autenticar login
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
