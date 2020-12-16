/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
public class add_events extends HttpServlet {
String event_1="";
        String event_2="";
        String event_3="";
        String event_4="";
        String event_5="";
        String venue_1,venue_2,venue_3,venue_4,venue_5;
        String time_1,time_2,time_3,time_4,time_5;
    public void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        
        String date=request.getParameter("date");
        event_1=request.getParameter("Event-1");
        event_2=request.getParameter("Event-2");
        event_3=request.getParameter("Event-3");
        event_4=request.getParameter("Event-4");
        event_5=request.getParameter("Event-5");
        venue_1=request.getParameter("Venue-1");
        venue_2=request.getParameter("Venue-2");
        venue_3=request.getParameter("Venue-3");
        venue_4=request.getParameter("Venue-4");
        venue_5=request.getParameter("Venue-5");
        time_1=request.getParameter("Time-1");
        time_2=request.getParameter("Time-2");
        time_3=request.getParameter("Time-3");
        time_4=request.getParameter("Time-4");
        time_5=request.getParameter("Time-5");
        
        try {
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/VIT-AP EVENT CALENDAR 1","vamsi","vamsi");
            ResultSet rs=null;
            PreparedStatement pst;
            String sql;
            sql="insert into EVENTS(DATE,EVENT_1,EVENT_2,EVENT_3,EVENT_4,EVENT_5,VENUE_1,VENUE_2,VENUE_3,VENUE_4,VENUE_5,TIME_1,TIME_2,TIME_3,TIME_4,TIME_5) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst=conn.prepareStatement(sql);
                pst.setString(1, date);
                pst.setString(2, event_1);
                pst.setString(3, event_2);
                pst.setString(4, event_3);
                pst.setString(5, event_4);
                pst.setString(6, event_5);
                pst.setString(7, venue_1);
                pst.setString(8, venue_2);
                pst.setString(9, venue_3);
                pst.setString(10, venue_4);
                pst.setString(11, venue_5);
                pst.setString(12,time_1);
                pst.setString(13,time_2);
                pst.setString(14,time_3);
                pst.setString(15,time_4);
                pst.setString(16,time_5);
                pst.execute();
                
                response.sendRedirect("login_page.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(add_events.class.getName()).log(Level.SEVERE, null, ex);
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