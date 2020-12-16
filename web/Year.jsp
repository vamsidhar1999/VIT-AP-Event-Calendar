<%-- 
    Document   : Year
    Created on : 26 May, 2019, 12:31:22 PM
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
            <form name="filter" action="Yeardata.jsp" target="yeardata" method="post">
                Year <input type="text" name="Year" value="" />
                <input type="submit" value="Submit" name="submit" id="submit">
            </form>
            <div id="year">
            <iframe src="Yeardata.jsp" name="yeardata" height="400" width="500">
            </iframe>
        </div>
            
            
        </div>
        
        <footer>
            <pre><p>VIT-AP  Contact: +040-33333333                                         Email: feedback@vitap.ac.in                               Copyrights@ Vamshidhar Reddy                                  C@ 2019</p>
            </pre>
            
        </footer>
        
    </body>
</html>
