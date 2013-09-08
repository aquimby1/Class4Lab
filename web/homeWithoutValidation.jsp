<%-- 
    Document   : home
    Created on : Sep 8, 2013, 4:16:20 PM
    Author     : AJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculate Area</title>
    </head>
    <body>
        <h1>Area Calculation</h1>
        <form id="form1" name="form1" method="POST" action="CalculationController">
            <p>Enter the length and width of the rectangle<br><br>
                Length: <input name="recLength" type="text" id="recLength">
                Width: <input name="recWidth" type="text" id="recWidth"><br><br>
                <input type="submit" name="calc" value="Calculate">
                

            </p>
        </form>
        
    </body>
</html>
