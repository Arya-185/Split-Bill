    <%-- 
        Document   : signup
        Created on : 22 Jun, 2023, 5:03:46 PM
        Author     : 91722
    --%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
            <title> Registration page </title>
        </head>
        <body>
            <form name="frm1" method="post" action="signup">
                Enter your name:<input type="text" name="name" value=""/></br>
                Phone:<input type="tel" name="pnum" value=""></br>
                Gender:<input type="radio" name="gtxt" value="Male">Male<input type="radio" name="gtxt" value="Female">Female</br>
                password:<input type="password" name="pass" value=""/></br></br>
                <input type="submit" value="Sign In" name="signin"/>
            </form>
        </body>
    </html>
