package controlador;

import java.sql.ResultSet;
import java.util.ArrayList;
import modelo.*;

public class Controlador {
	
	public Controlador(){
		
	}
	
	public void AgregarPais(EnPais ep){
		Conexion c = new Conexion();
		c.InsertarSQL("INSERT INTO `pais` (`id_pais`, `pais_nombre`) VALUES (NULL, \'"+ ep.getPaisNombre() +"\' )");
	}
	
	public String getPaises(){
		
		Conexion co = new Conexion();		
		String sql = "SELECT * FROM pais";
		ResultSet rs = co.consultarSQL(sql);
		
		String resultado = "";
		try{
			
			while (rs.next()) {
				resultado += "\n--------------";
				resultado += "\nNombre : " + rs.getString(2);
			}
			
			return resultado;
			
		}catch(Exception e){
			return "ERROR";
		}
		
	}
}
