<%-- 
    Document   : filter
    Created on : 25 Jun, 2019, 11:58:10 AM
    Author     : VAMSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width">
       <link rel="stylesheet" href="filter.css">
        <title>filter</title>
    </head>
    <body>
    <header>
        <div class="container">
                <img id="image1" src="vitttaplogo.png">
                
        </div>
        <p>APPLY KNOWLEDGE IMPROVE LIFE</p>
    </header>
        <div class="container1">
            <form name="filter" action="filter" method="post">
                <input type="radio" name="filter" value="Year" /> Year
                <input type="radio" name="filter" value="Month" /> Month
                <input type="submit" value="Submit" name="submit" id="submit">
            </form>
        </div>
        
        <footer>
            <pre><p>VIT-AP  Contact: +040-33333333                                         Email: feedback@vitap.ac.in                               Copyrights@ Vamshidhar Reddy                                  C@ 2019</p>
            </pre>
            
        </footer>
        
    </body>
</html>
