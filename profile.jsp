<%-- 
    Document   : profile
    Created on : 25 Jun, 2023, 9:33:01 PM
    Author     : 91722
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  
        <form name="form1" method="POST">
            <label>Name </label><input type="text" name="name" value="" /></br></br>            
            <label>Phone </label><input type="text" name="phone" value="" /></br></br>            
            <label>gender </label><input type="text" name="Gender" value="" /></br></br>            
            <input type="submit" value="Edit Profile" name="edit" />
            <input type="submit" value="Back" formaction="home.jsp"/></br></br>
            <input type="submit" value="logout" name="logout" formaction="index.jsp"/>
            
        </form>
        </body>
</html>
