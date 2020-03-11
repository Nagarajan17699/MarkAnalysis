/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculation;
import java.sql.*;
import java.sql.DriverManager;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Nagarajan
 */
 
public class dbCon {
    
    public static Connection getConnection() throws ClassNotFoundException, InstantiationException, SQLException
    {
        Connection conn =  null;
        try {
            if(conn == null){
            Class.forName("com.mysql.jdbc.Driver").newInstance();
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zval?useSSL=false","root","1234");
            }
        } catch (Exception ex) {
            Logger.getLogger(dbCon.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }
        return conn;
    }
    
}
