/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculation;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import calculation.dbCon;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Nagarajan
 */
public class dbPush extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            PrintWriter out = response.getWriter();
            
            String regno = request.getAttribute("regno").toString();
            
            String unit1 = (request.getAttribute("unit1").toString());
            String unit2 = (request.getAttribute("unit2").toString());
            String unit3 = (request.getAttribute("unit3").toString());
            String unit4 = (request.getAttribute("unit4").toString());
            String unit5 = (request.getAttribute("unit5").toString()); 
           
            String subcode = (request.getAttribute("subcode").toString());
            String subname = (request.getAttribute("subname").toString());
            String sem = (request.getAttribute("sem").toString());
            
            System.out.println(regno + unit1 + unit2 + unit3+unit4+unit5+subname+subcode+sem);
            
            Connection conn = dbCon.getConnection();
            Statement stmt = conn.createStatement();
            String sql = "INSERT into iaemarks VALUES ('"+regno+"','"+unit1+"','"+unit2+"','"+unit3+"','"+unit4+"','"+unit5+"',"+sem+",'"+subcode+"','"+subname+"')";
            int num = stmt.executeUpdate(sql);
            if(num>0){
                System.out.println("Success");
                out.println("Success");
            }
            else{
                out.println("Success");
                System.out.println("failure");
            }
                
            
       request.getRequestDispatcher("PerDisp.jsp").forward(request, response);

            
        } catch (Exception ex) {
            
            System.out.print(ex);
        }
        
           // String dept = request.getParameter("dept");
            

    }
    

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
