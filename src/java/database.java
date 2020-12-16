
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author VAMSI
 */
public class database {
    public void getCon(){
        int flag=1;
    
        try {
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/VIT-AP EVENT CALENDAR 1","vamsi","vamsi");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from LOGIN");

 
        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
            }
}
