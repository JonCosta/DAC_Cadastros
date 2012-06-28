package dao;

//Pacotes de importação
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public ArrayList<Cidade> arrayCidade(){
		
		ArrayList<Cidade> p = new ArrayList<Cidade>();
		
		String sql = "select * from cidade" ;
		Statement stmt = null ;
        ResultSet rs = null ;

        try{
           
            stmt = connection.createStatement() ;
            rs = stmt.executeQuery(sql) ;
        	
        	while( rs.next() ){
                
                int id = rs.getInt("idcidade");
                String nome = rs.getString("nomecidade");
                String uf = rs.getString("siglauf");
                Cidade c = new Cidade(id, nome, uf) ; 
                p.add(c);
            }                       
                                                                               
         }
        catch(SQLException e){
             System.out.println("ERRO: obtenção de dados do ResultSet");
             System.out.println( e.getMessage() ) ;
          }
        return p;
		
	}//Fecha arrayCidade
	
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