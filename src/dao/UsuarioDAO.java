package dao;

//Pacotes de importação
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
	
	
	
}//Fecha classe
