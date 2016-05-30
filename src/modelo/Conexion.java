package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {
	
    static String bd = "empenvios";
    static String login = "root";
    static String password = "";
    static String url = "jdbc:mysql://localhost/"+bd;
    
    Connection connection = null;
    private ResultSet rs;
    private PreparedStatement st;
    
	public Conexion(){
		this.Conectar("");
	}
	
	public void Conectar(String none){
			
		try{
	         Class.forName("com.mysql.jdbc.Driver");
	         connection = DriverManager.getConnection(url,login,password);
	         if (connection!=null){
	            System.out.println("Conexión a base de datos "+bd+" OK\n");
	         }
	      }
	      catch(SQLException e){
	         System.out.println(e);
	      }catch(ClassNotFoundException e){
	         System.out.println(e);
	      }catch(Exception e){
	         System.out.println(e);
	      }	
	}
	
	public int InsertarSQL(String sql){
		
		try{
			st = connection.prepareStatement(sql);
			int status = st.executeUpdate();
			return status;
		}catch(SQLException e){
	         System.out.println(e);
	         return -1;
		}catch(NullPointerException e){
	         System.out.println(e);
	         return -1;
	    }catch(Exception e){
	         System.out.println(e);
	         return -1;
	    }	
		
	}
	
	public ResultSet consultarSQL(String sql){
		
		try{
			st = connection.prepareStatement(sql);
			rs = st.executeQuery();					
			return rs;
		}catch(SQLException e){
	         System.out.println(e);
	         return null;
	    }catch(NullPointerException e){
	         System.out.println(e);
	         return null;
	    }catch(Exception e){
	         System.out.println(e);
	         return null;
	    }	
		
	}	
}

