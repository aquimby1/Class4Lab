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
        <h3>Rectangle Area Calculation</h3>
        <form id="form1" name="form1" method="POST" action="CalculationController?calcType=rectangle" onsubmit="return validateForm()" >
            <p>Enter the length and width of the rectangle<br><br>
                Length: <input name="recLength" type="number" id="recLength">
                Width: <input name="recWidth" type="number" id="recWidth"><br><br>
                <input type="submit" name="calc" value="Calculate">          
            </p>
            <% 
            String recArea = "";
            Object obj = request.getAttribute("recArea");
            if(obj != null){
                recArea = obj.toString();
            }
            if(recArea!=""){
            out.println("Your anwswer is "+ recArea);
            }
            %>
        </form>
        <h3>Circle Area Calculation</h3>
        <form id="form2" name="form2" method="POST" action="CalculationController?calcType=circle" onsubmit="return validateForm2()" >
            Circle Radius: <input name="circleRad" type="number" id="circleRad"><br><br>
            <input type="submit" name="calc" value="Calculate">
            <% 
            String cirArea = "";
            Object obj1 = request.getAttribute("cirArea");
            if(obj1 != null){
                cirArea = obj1.toString();
            }
            if(cirArea!=""){
            out.println("Your anwswer is "+ cirArea);
            }
            %>
        </form>
        <h3>Triangle Area Calculation</h3>
        <form id="form3" name="form3" method="POST" action="CalculationController?calcType=triangle" onsubmit="return validateForm3()" >
            First Side: <input name="triSide1" type="number" id="triSide1">
            Second Side: <input name="triSide2" type="number" id="triSide2"><br><br>
            <input type="submit" name="calc" value="Calculate">
            <% 
            String triArea = "";
            Object obj2 = request.getAttribute("triArea");
            if(obj2 != null){
                triArea = obj2.toString();
            }
            if(triArea!=""){
            out.println("Your anwswer is "+ triArea);
            }
            %>
        </form>  
    </body>
    <script>
        function validateForm(){
            var x = true;
            var l=document.forms["form1"]["recLength"].value;
            x=valNum(l);
            var w=document.forms["form1"]["recWidth"].value;
            x=valNum(w);
            return x;
        }
        function validateForm2(){
            var x = true;
            var r=document.forms["form2"]["circleRad"].value;
            x=valNum(r);
            return x;
        }
        function validateForm3(){
            var x = true;
            var t1=document.forms["form3"]["triSide1"].value;
            x=valNum(t1);
            var t2=document.forms["form3"]["triSide2"].value;
            x=valNum(t2); 
            return x;
        }
        function valNum(num){
            if (num==null || num==""){
              alert("Box must be filled out");
              return false;
              }
            if (num<=0 || num>1000000){
              alert(num+" is out of acceptible range(0-1000000)");
              return false;
              }
            if (isNaN(num)){
              alert(num+" must be a number");
              return false;
              }
            }
            
        
        
    </script>
</html>
