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
import javax.swing.JOptionPane;

/**
 *
 * @author VAMSI
 */
public class login_validation extends HttpServlet 
{
    static String username=null,password=null;
   
    
    
    public void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
    {
        username=request.getParameter("username");
        password=request.getParameter("password");
    
    
        Connection conn=null;
        try {
            conn=DriverManager.getConnection("jdbc:derby://localhost:1527/VIT-AP EVENT CALENDAR 1","vamsi","vamsi");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from LOGIN");
            while(rs.next())
            {
                if(rs.getString("USERNAME").equals(username)&&rs.getString("PASSWORD").equals(password))
                {
                    response.sendRedirect("login_page.jsp");
                }
                else
                {
                    response.sendError(422, "INVALID CREDENTIALS!");
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(login_validation.class.getName()).log(Level.SEVERE, null, ex);
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
