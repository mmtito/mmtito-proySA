package edu.yavirac.distributivobackend.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    public static Connection getConnetion() throws SQLException{

        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/distributivodb", "postgres", "postgres"); 
       return con;
        
     
    }
   
}
