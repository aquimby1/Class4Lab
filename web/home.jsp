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
        <form id="form1" name="form1" method="POST" action="CalculationController" onsubmit="return validateForm()" >
            <p>Enter the length and width of the rectangle<br><br>
                Length: <input name="recLength" type="number" id="recLength">
                Width: <input name="recWidth" type="number" id="recWidth"><br><br>
                <input type="submit" name="calc" value="Calculate">
                

            </p>
        </form>
        
    </body>
    <script>
        function validateForm(){
            var l=document.forms["form1"]["recLength"].value;
            var w=document.forms["form1"]["recWidth"].value;
            
            if (l==null || l==""){
              alert("Length must be filled out");
              return false;
              }
            if (l<=0 || l>1000000){
              alert("Length is out of acceptible range(0-1000000)");
              return false;
              }
            if (isNaN(l)){
              alert("Length must be a number");
              return false;
              }
            
            if (w==null || w==""){
              alert("Width must be filled out");
              return false;
              }
            if (w<=0 || w>1000000){
              alert("Width is out of acceptible range(0-1000000)");
              return false;
              }
            if (isNaN(w)){
              alert("Width must be a number");
              return false;
              }
            }
            
        
        
    </script>
</html>
