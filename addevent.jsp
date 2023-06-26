<%-- 
    Document   : addevent
    Created on : 25 Jun, 2023, 5:09:51 PM
    Author     : 91722
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Event</title>
    </head>
    <body>
        <form name="form1" method="POST">
        Enter Event Name: <input type="text" name="eventName" value="" /></br></br>
        Start Date:<input type="Date"name="startDate"></br></br>
        End Date:<input type="Date"name="endDate"></br></br>
        Status:<input type="radio" name="status" value="ongoing">Ongoing<input type="radio" name="status" value="future">Future</br></br>
        Total Amount: <input type="text" name="eventAmount"/></br></br>
        <input type="submit" value="Create Event" name="createEvent" formaction="addevent"/>
        <input type="submit" value="Back" formaction="event.jsp"/>
        </form>
    </body>
</html>
