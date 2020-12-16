<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%-- 
    Document   : login page
    Created on : 26 Apr, 2019, 10:49:54 PM
    Author     : VAMSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="./WEB-INF/LOGIN.css">
    
        <title>Login page</title>
        <link rel="stylesheet" type="text/css" href="login_page.css">
    </head>
    <body>
        <header>
             <img id="image1" src="vitttaplogo.png">
        <p>APPLY KNOWLEDGE IMPROVE LIFE</p>
        </header>
        <div class="container">
            <%
                String username;
                username=request.getParameter("username");
            %>
            <p>Select date and give Event names and Venues to add the details.</p>
        <form name="admin_page" action="add_events" method="POST">
            <div class="nav">
            Select Date <input type="date" name="date" required=""/>
        </div>
            <div class="space">
                <p>"   "</p>
            </div>
            <div class="main">
                
                <p>EVENTS</p>
            Event-1  : <input type="text" name="Event-1" required="" value="" />
            <p></p>
            Event-2  : <input type="text" name="Event-2" value="" />
            <p></p>
            Event-3  : <input type="text" name="Event-3"  value="" />
            <p></p>
            Event-4  : <input type="text" name="Event-4"  value="" />
            <p></p>
            Event-5  : <input type="text" name="Event-5"  value="" />
        </div>
            <div class="space">
                <p>"      "</p>
            </div>
            <div class="venue">
                <p>VENUES</p>
            <input type="text" name="Venue-1" required="" value=""/>
            <p></p>
            <input type="text" name="Venue-2" value=""/>
            <p></p>
            <input type="text" name="Venue-3" value=""/>
            <p></p>
            <input type="text" name="Venue-4" value=""/>
            <p></p>
            <input type="text" name="Venue-5" value=""/>
         </div>
            <div class="space">
                <p>" "</p>
            </div>
            <div class="time">
                <p>Time</p>
            <input type="time" name="Time-1" required="" value=""/>
            <p></p>
            <input type="time" name="Time-2"  value=""/>
            <p></p>
            <input type="time" name="Time-3"  value=""/>
            <p></p>
            <input type="time" name="Time-4"  value=""/>
            <p></p>
            <input type="time" name="Time-5"  value=""/>
            </div>
        <div class="buttons">
            <input type="submit" value="Submit" name="submit" id="submit"/>
        </form>
            <form action="LOGIN.jsp" method="POST">
            <input type="submit" value="Logout" name="logout"/>
        </form>
</div>
            <div id="delete">
                <p>Select the date and delete the Events that being held on that particular day</p>
                
                <form action="Delete">
                <input type="date" name="date1" required="">
                <input type="submit" value="DELETE" name="delete">
                </form>
            </div>
        </div>
        <footer>
            
            <pre><p>VIT-AP  Contact: +040-33333333                                         Email: feedback@vitap.ac.in                               Copyrights@ Vamshidhar Reddy                                  C@ 2019</p>
            </pre>        
        </footer>
    </body>
</html>