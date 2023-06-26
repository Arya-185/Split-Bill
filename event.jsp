<%-- 
    Document   : event
    Created on : 25 Jun, 2023, 6:39:19 PM
    Author     : 91722
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="s1.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        Connection cn = connect.getCon();
        Statement st = cn.createStatement();
        String qr = "SELECT * FROM event_detail";
        ResultSet rs = st.executeQuery(qr);
    %>
    <body>
        <form name="form1" method="POST">
    <input type="submit" value="Add Event" name="addEvent" formaction="addevent.jsp"/></br></br>
    <table align = "left" border = "1">
            <left><h2>Event Details</h2></left>
            <th>Sr.no.</th>
            <th>Event Name</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Status</th>
            <th>Amount</th>
            <th>Added By</th>
            <th>Action</th>
            </tr>
            <%
               while(rs.next())
               {
            %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(3)%></td>
                <td><a href="addmembers.jsp">Add members</a>/<a href="addactivity.jsp">Add Activity</a></td>
            </tr>
            <%
                }
            %>
        </table></br></br></br></br></br>
        <input type="submit" value="Back" formaction="home.jsp"/>        
        </form>
</body>
</html>