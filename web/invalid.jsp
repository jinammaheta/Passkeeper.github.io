<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" import="java.util.Collections.*" %>
<html>
    <head>
        <title>Pass Keeper</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
    </head>
    <body>

        <div id="header">
            <div id="logo">
                <img src="Capture.PNG" alt="not found" width="150" height="80"/>
            </div>
             <div id="logoname">
                <img src="Capture2.PNG" alt="not found" width="200" height="80"/>
            </div>
            <div id="navigation">
                <ul>
                    <li><a href="index.jsp" >Home</a></li>
                    <li><a href="how.html" >How it works</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="signup.jsp" >Register</a></li>
                </ul>
            </div>
        </div>  
        <div id="invalid">
            Invalid Credentials! Try Again<br>
        </div>
        <div class="left1">
            <h2 id="heading">Sign In</h2>
            <hr>
            <form name="signin" action="verify.jsp" method="post">
                <input type="text" name="userid" placeholder="Username" ><br>
                <input type="password"  name="pass" placeholder="Password"><br>
                <input type="submit" value="signin">
                 <input type="reset" value="Reset"><br>  
                <input type="hidden" name="type" value="login">
                <a href="signup.jsp">Signup</a>
            </form>
        </div>

    </body>
</html>
