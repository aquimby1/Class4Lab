<%-- 
    Document   : results
    Created on : Sep 8, 2013, 5:16:15 PM
    Author     : AJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculation Results</title>
    </head>
    <body>
        <p>Your calculation Result is:</p>
        
        <% 
            String area = "could not calculate";
            Object obj = request.getAttribute("area");
            if(obj != null){
                area = obj.toString();
            }
            out.println(area);
        %>
    </body>
</html>
