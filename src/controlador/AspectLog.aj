package controlador; 

import java.io.*;
import java.util.Date;
import java.sql.ResultSet;

public aspect AspectLog {
	
	pointcut basededatos ():call(void modelo.Conexion.Conectar(*));
	//pointcut insertarsql ():call(int modelo.Conexion.InsertarSQL(*));
	//pointcut consultarSQL ():call(ResultSet modelo.Conexion.consultarSQL(*));
	
	after():basededatos(){
		
		Date now = new Date();
		
		try
		{
		    String filename= "C:\\xampp\\log.txt";
		    FileWriter fw = new FileWriter(filename,true);
		    String log = "\n"+now.toString() +  " : INFO : Se acaba de conectar a la base de datos";
		    fw.write(log);
		    fw.write(System.getProperty( "line.separator" ));
		    fw.close();
		}
		catch(IOException ioe)
		{
		    System.err.println("IOException: " + ioe.getMessage());
		}
		
	}	
	/*after():insertarsql(){
		Date now = new Date();
		try
		{
		    String filename= "C:\\xampp\\log.txt";
		    FileWriter fw = new FileWriter(filename,true);
		    String log = "\n"+now.toString() +  " : INFO : Se acaba de insertar un elemento a la base de datos";
		    fw.write(log);
		    fw.write(System.getProperty( "line.separator" ));
		    fw.close();
		}
		catch(IOException ioe)
		{
		    System.err.println("IOException: " + ioe.getMessage());
		}
		
	}
	after():consultarSQL(){
		Date now = new Date();
		try
		{
		    String filename= "C:\\xampp\\log.txt";
		    FileWriter fw = new FileWriter(filename,true);
		    String log = "\n"+now.toString() +  " : INFO : Se acaba de realizar una consulta a la base de datos";
		    fw.write(log);
		    fw.write(System.getProperty( "line.separator" ));
		    fw.close();
		}
		catch(IOException ioe)
		{
		    System.err.println("IOException: " + ioe.getMessage());
		}
		
	}*/
}
