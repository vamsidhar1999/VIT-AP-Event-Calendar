<%-- 
    Document   : Calendar
    Created on : 2 May, 2019, 7:22:36 PM
    Author     : VAMSI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
               <link rel="stylesheet" href="Calendar.css">
        <title>Calendar</title>
    </head>
    
    <body>
        <header>
            <img id="image1" src="vitttaplogo.png">
        <p>APPLY KNOWLEDGE IMPROVE LIFE</p>
        </header>
        
    <div id="line">
        <div id="container">
            <form name="Calendar" action="events.jsp" target="events" method="POST">
                <p>Choose Date</p><input type="date" name="date" required=""/>
                <p></p>
            <input type="submit" value="OK" id="submit"/>
            <input type="reset" value="reset"/>
            </form>
        </div>
        <div id="event">
            <iframe src="events.jsp" name="events" height="400" width="500">
            </iframe>
        </div>
    </div>
        <footer>
            
            <pre><p>VIT-AP  Contact: +040-33333333                                         Email: feedback@vitap.ac.in                               Copyrights@ Vamshidhar Reddy                                  C@ 2019</p></pre>
        </footer>
    </body>
</html>