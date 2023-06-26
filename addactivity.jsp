<%-- 
    Document   : addactivity
    Created on : 25 Jun, 2023, 5:10:14 PM
    Author     : 91722
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Locale.Category"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="s1.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Activity</title>
    </head>
    <%
        Connection cn = connect.getCon();
        Statement st = cn.createStatement();
        String qr = "SELECT * FROM event_detail";
        ResultSet rs = st.executeQuery(qr);
    %>
    <body>
        <form name="form1" method="POST">
            Select Event:<select name="dropdown">
        <%
        String option = "";
        while(rs.next())
        {
               option = rs.getString("event_name");
   %>
   <option value="<%= option %>" name="" ><%= option %></option>
   <% } 
         %>
</select></br></br>
        Name of Activity: <input type="text" name="actName" value="" /></br></br>
        Date:<input type="Date" name="selectedDate"></br></br>
        Time:<input type="time" name="selectedTime"></br></br>
        Amount: <input type="text" name="actAmount"/></br></br>
        <input type="submit" value="Back" formaction="event.jsp"/>
        </form>
    </body>
</html>
