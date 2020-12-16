<%-- 
    Document   : events
    Created on : 2 May, 2019, 9:57:23 PM
    Author     : VAMSI
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="events.css">
        <title>Events</title>
    </head>
    <body>
        
            <%!
            ResultSet rs;
            String date2,event1=" ",event2=" ",event3=" ",event4=" ",event5=" ",venue1=" ",venue2=" ",venue3=" ",venue4=" ",venue5=" ";
            String time1,time2,time3,time4,time5;
            %>
            
            <%
                String date1=request.getParameter("date");
                Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/VIT-AP EVENT CALENDAR 1","vamsi","vamsi");
                String sql;
                sql="select * from EVENTS where DATE='"+date1+"'";
                Statement st=conn.createStatement();
                rs=st.executeQuery(sql);
                while(rs.next())
                {
                date2=rs.getString("DATE");
                event1=rs.getString("EVENT_1");
                event2=rs.getString("EVENT_2");
                event3=rs.getString("EVENT_3");
                event4=rs.getString("EVENT_4");
                event5=rs.getString("EVENT_5");
                venue1=rs.getString("VENUE_1");
                venue2=rs.getString("VENUE_2");
                venue3=rs.getString("VENUE_3");
                venue4=rs.getString("VENUE_4");
                venue5=rs.getString("VENUE_5");
                time1=rs.getString("TIME_1");
                time2=rs.getString("TIME_2");
                time3=rs.getString("TIME_3");
                time4=rs.getString("TIME_4");
                time5=rs.getString("TIME_5");
                }
                %>
                <p id="date"><%=date1 %></p>
                <table border="1" id="table">
                <tr>
                    <td>EVENTS</td>
                    <td>TIME</td>
                    <td>VENUES</td>
                </tr>
                <tr>
                    <td><%=event1 %></td>
                    <td><%=time1%></td>
                    <td><%=venue1%></td>
                </tr>
                <tr>
                    <td><%=event2 %></td>
                    <td><%=time2%></td>
                    <td><%=venue2 %></td>
                </tr>
                <tr>
                    <td><%=event3 %></td>
                    <td><%=time3%></td>
                    <td><%=venue3%></td>
                </tr>
                <tr>
                    <td><%= event4 %></td>
                    <td><%=time4%></td>
                    <td><%=venue4%></td>
                </tr>
                <tr>
                    <td><%= event5 %></td>
                    <td><%=time5%></td>
                    <td><%=venue5%></td>
                </tr>
                </table>
                <form action="events.jsp">
                <input type="submit" value="reset"/>
    </form>         
    </body>
</html>