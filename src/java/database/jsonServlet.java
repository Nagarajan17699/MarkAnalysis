/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import database.dbcon;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class jsonServlet extends HttpServlet {

        private static final long serialVersionUID = 1L;

        protected void doGet(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException {

                try
                {
                    
                    String semester = request.getParameter("semester");
                    String department = request.getParameter("department");
                    String batch = request.getParameter("batch");
                    System.out.println(batch);
                    String ayear=request.getParameter("ayear");
                    String batch1=new StringBuffer(batch).reverse().toString();
                    Connection con = new dbcon().getConnection("sjitportal");
                    Statement st= con.createStatement();
                    String sql="select * from regulations where batch='"+batch+"'";
                    ResultSet rs= st.executeQuery(sql);
                    String regulation=null;
                    while(rs.next())
                    {
                        regulation=rs.getString("regulation");
                        System.out.print(regulation);
                    }
                    rs.close();
                    st.close();
                    ;//con.close();
                    List<String> list = new ArrayList<String>();
                    String json = null;
                    
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        con = new dbcon().getConnection(department);
                        st = con.createStatement();
                        System.out.println("This is ayear"+ayear);
                        rs=st.executeQuery("select * from subject_sem_table where sem='"+semester+"'and (ayear like '%elective%"+ayear+"%' or ayear like 'all') and subtype='theory' and regulation='"+regulation+"'");
                        System.out.print(rs.next());
                        while(rs.next())
                        {
                            String a=rs.getString("subname");
                            System.out.println(a);
                            String b = rs.getString("subcode");
                            //String b=rs.getString("subcode");
                            list.add(b+"-"+a);
                        }
                        
                        
                        
                        
                        json = new Gson().toJson(list);
                        System.out.println(json);
                        response.setContentType("application/json");
                        response.getWriter().write(json);
                     if(st!=null)
                            st.close();
                              if(con!=null)
                                ;//con.close();
                }catch(Exception ex)
        {
                response.getWriter().print(ex);
                System.out.println(ex);
        }
        }
        
            
        
}
