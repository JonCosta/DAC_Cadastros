package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	public Connection getConnection() throws SQLException{
		
		//System.out.println("Conectando ao banco");
		try{
			Class.forName("org.gjt.mm.mysql.Driver"); 
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/dac_cadastros","root","") ;
		}catch(SQLException e1){
			throw new RuntimeException(e1) ;
		}catch(Exception e){
			throw new RuntimeException(e) ;
		}
		
	}//Fecha getConnection
	
}//Fecha classe
