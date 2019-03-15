<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <script>
            function confirmpass()
            {
                if (document.getElementById("cpass").value !== document.getElementById("pass").value)
                    return false;

            }
        </script>
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
                        <%
                            HttpSession s = request.getSession(false);
                            if (s == null) {
                                out.print("<li><a href=login.jsp>Login</a></li>");
                            }
                              else
                            {
                                 out.println("<li><a href='Logout.jsp'>Logout</a></li>");
                                  out.println(" <li><a href='add.jsp' >Add</a></li>");
                            }
                        %>
                    <li><a href="signup.jsp" >Register</a></li>
                   
                    
                </ul>
            </div>
        </div>
        <div class="left2">
            <h2 id="heading">Register</h2>
            <hr>
            <form action="verify.jsp" id=r1 method="post" onsubmit="return confirmpass();">
                <label>Name:</label>  <br><input type="text" name="name" placeholder="Enter your name" required><br>
                <label>Email:</label> <br><input type="email" name="email" placeholder="abc@gmail.com" required pattern="[\w-]+@([\w-]+\.)+[\w-]+"><br>
               <label>Phone-No:</label> <br><input type="text" name="phone" pattern="[0-9]{10}" required title="10 digits minimum"><br>
               <label>Password:</label> <br><input type="password" name="pass" id="pass" required ><br>
                <label>Confirm:</label> <br><input type="password" id="cpass" onpaste="return false" required><br>
                <input type="hidden" name="type" value="signup">
                <input type="submit" value="signup" >
            </form>
        </div>
    </body>
</html>
