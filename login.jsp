<%-- 
    Document   : login.jsp
    Created on : 24 Jun, 2023, 1:36:36 PM
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
        Enter your phone number: <input type="text" name="ptxt" value="" />  
        Enter password: <input type="password" name="pass" value="" />
        <input type="submit" value="log in" name="login" formaction="login"/>
        </form>
    </body>
</html>
