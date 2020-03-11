/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculation;

import java.io.IOException;
import java.io.PrintWriter;
import calculation.dbPush;
import java.text.DecimalFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nagarajan
 */
public class PerDisp extends HttpServlet {

    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        String regno =request.getParameter("registerNo");
        String sem = request.getParameter("sem");
        String subcode = request.getParameter("subcode");
        String subname = request.getParameter("subname");
        int m1 = Integer.parseInt(request.getParameter("1"));
        int m2 = Integer.parseInt(request.getParameter("2"));
        int m3 = Integer.parseInt(request.getParameter("3"));
        int m4 = Integer.parseInt(request.getParameter("4"));
        int m5 = Integer.parseInt(request.getParameter("5"));
        int m6 = Integer.parseInt(request.getParameter("6"));
        int m7 = Integer.parseInt(request.getParameter("7"));
        int m8 = Integer.parseInt(request.getParameter("8"));
        int m9 = Integer.parseInt(request.getParameter("9"));
        int m10 = Integer.parseInt(request.getParameter("10"));
        int m11 = Integer.parseInt(request.getParameter("11"));
        int m12 = Integer.parseInt(request.getParameter("12"));
        int m13 = Integer.parseInt(request.getParameter("13"));
        int m14 = Integer.parseInt(request.getParameter("14"));
        int m15 = Integer.parseInt(request.getParameter("15"));
        int m16 = Integer.parseInt(request.getParameter("16"));
        String s1 = request.getParameter("optional");
        
        int u1,u2,u3,u4,u5,opt=0;
        
        
        
        u1 = m1+m2+m11;
        u2 = m3+m4+m12;
        u3 = m5+m6+m13;
        u4 = m7+m8+m14;
        u5 = m9+m10+m15;
        
        if(s1.equalsIgnoreCase("u1"))
            u1+=m16;
        else if(s1.equalsIgnoreCase("u2"))
            u2+=m16;
        else if(s1.equalsIgnoreCase("u3"))
            u3+=m16;
        else if(s1.equalsIgnoreCase("u4"))
            u4+=m16;
        else
            u5+=m16;
        
        float unit1,unit2,unit3,unit4,unit5;
        
        if(!s1.equalsIgnoreCase("u1"))
          unit1 = calculation.calc(u1);
        else
           unit1 = calculation.calcopt(u1);
        
         if(!s1.equalsIgnoreCase("u2"))
          unit2 = calculation.calc(u2);
        else
           unit2 = calculation.calcopt(u2);
         
          if(!s1.equalsIgnoreCase("u3"))
          unit3 = calculation.calc(u3);
        else
           unit3 = calculation.calcopt(u3);
          
           if(!s1.equalsIgnoreCase("u4"))
          unit4 = calculation.calc(u4);
        else
           unit4 = calculation.calcopt(u4);
           
            if(!s1.equalsIgnoreCase("u5"))
          unit5 = calculation.calc(u5);
        else
           unit5 = calculation.calcopt(u5);
            
            double d = 2.34568;
            DecimalFormat f = new DecimalFormat("#.###");
            float temp =Float.parseFloat(f.format(unit1));
            
            request.setAttribute("regno",regno);
            request.setAttribute("subcode",subcode);
            request.setAttribute("sem",sem);
            request.setAttribute("subname",subname);
            request.setAttribute("unit1", Float.parseFloat(f.format(unit1)));
            request.setAttribute("unit2", Float.parseFloat(f.format(unit2)));
            request.setAttribute("unit3", Float.parseFloat(f.format(unit3)));
            request.setAttribute("unit4", Float.parseFloat(f.format(unit4)));
            request.setAttribute("unit5", Float.parseFloat(f.format(unit5)));
            
            
            request.getRequestDispatcher("dbPush").forward(request, response);
            
    }
    
    
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
