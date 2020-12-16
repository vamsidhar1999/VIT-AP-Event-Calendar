<%-- 
    Document   : LOGIN
    Created on : 26 Apr, 2019, 10:26:18 PM
    Author     : VAMSI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width">
       <link rel="stylesheet" href="LOGIN.css">
        <title>login</title>
    </head>
    <body>
    <header>
        <div class="container">
                <img id="image1" src="vitttaplogo.png">
                
        </div>
        <p>APPLY KNOWLEDGE IMPROVE LIFE</p>
    </header>
        <p id="title">Welcome</p>
        <div class="box">
        <form name="login" action="login_validation" method="POST">
            
            <p id="user">USERNAME  <input type="text" name="username" value="" required="" /></p>
            <p id="pass">PASSWORD  <input type="password" name="password" value="" required="" /></p> 
            
            <input type="submit" value="Submit" name="submit" id="submit">
            <input type="reset" value="reset" name="reset" />
            
        </form>
        </div>
        <footer>
            <pre><p>VIT-AP  Contact: +040-33333333                                         Email: feedback@vitap.ac.in                               Copyrights@ Vamshidhar Reddy                                  C@ 2019</p>
            </pre>
            
        </footer>
        
    </body>
</html>
