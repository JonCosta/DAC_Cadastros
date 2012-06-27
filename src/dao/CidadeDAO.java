package dao;

//Pacotes de importação
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.SQLException;
import com.mysql.jdbc.exceptions.* ;

import jdbc.ConnectionFactory;
import modelo.Cidade ;

public class CidadeDAO {

	private Connection connection = null ;
	
	public CidadeDAO(){
		
		try{
			this.connection = new ConnectionFactory().getConnection() ;
		}catch(SQLException e){
			throw new RuntimeException(e) ;
		}
		
	}//Fecha construtor	
	
	public String listaUFs(){
		
		String lista = "" ;
		
		String sql = "select siglauf from cidade group by siglauf order by siglauf asc" ;
		Statement stmt = null ;
        ResultSet rs = null ;
        
        try{
        
        	stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;
            
            while(rs.next()){
            	lista += "<option value="+rs.getObject(1)+">"+
            		rs.getObject(1) +
            	"</option>" ;
            }
        }catch(SQLException e){
        	
        }
		
		return lista ;
		
	}//Fecha listaUFs
	
}  //Fecha classe