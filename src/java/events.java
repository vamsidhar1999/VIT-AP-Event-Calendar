/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VAMSI
 */
public class events extends HttpServlet {
String date1=null,event1=null,event2=null,event3=null,event4=null,event5=null;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String date=request.getParameter("date");
        try {
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/VIT-AP EVENT CALENDAR 1","vamsi","vamsi");
            String sql;
            sql="select * from EVENTS where DATE='"+date+"'";
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                date1=rs.getString("DATE");
                event1=rs.getString("EVENT-1");
                event2=rs.getString("EVENT-2");
                event3=rs.getString("EVENT-3");
                event4=rs.getString("EVENT-4");
                rs.getString("EVENT-5");
            }
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(events.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
