/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nagarajan
 */
public class HtmlContent {
    
     private String year;
    private String current;
    private String yearString;

    public String getYearString() {
        return yearString;
    }

    public void setYearString(String yearString) {
        this.yearString = yearString;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getCurrent() {
        return current;
    }

    public void setCurrent(String current) {
        this.current = current;
    }
    
    
    public static List<HtmlContent> getAll(){
    
        List<HtmlContent> list=new ArrayList<HtmlContent>();
        Connection conbatch=null;
        PreparedStatement stmt=null;
        try{
         conbatch = new dbcon().getConnection("sjitportal");
                     stmt = conbatch.prepareStatement("select * from academicyr");
                    ResultSet rs=stmt.executeQuery();
                    
                    rs.afterLast();
                    while(rs.previous())
                    {
                   HtmlContent a=new HtmlContent();
                   a.setCurrent(rs.getString("current"));
                   a.setYear(rs.getString("year"));
                   a.setYearString(rs.getString("yearString"));
                   list.add(a);
                    
                    }
        }catch(Exception e){
        e.printStackTrace();
        }
        finally{
            try {
                if(stmt!=null)
                    stmt.close();
                if(conbatch!=null)
                    ;//conbatch.close();
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }
        
        return list;
    }
     public static String getHTMLContent(){
    String res="";
        for(HtmlContent b:getAll()){
            if(b.getCurrent().equals("n") ||b.getCurrent().equals("fee"))
            res+="<option value='"+b.getYearString()+"'>"+b.getYearString()+"</option>";
            else
            res="<option value='"+b.getYearString()+"'>"+b.getYearString()+"</option>"+res;
                
    }
    return res;
    }
    
}
