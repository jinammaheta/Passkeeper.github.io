<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
    <head>
        <title>PassKeeper</title>
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
                        <%
                            HttpSession s = request.getSession(false);
                            if (s == null) {
                                out.print("<li><a href=login.jsp>Login</a></li>");
                                 out.println("<li><a href='signup.jsp'>Register</a></li>");
                            } else {
                                out.println("<li><a href='Logout.jsp'>Logout</a></li>");
                                out.println(" <li><a href='add.jsp' >Add</a></li>");
                            }
                            
                        %>

                   
                   

                </ul>
            </div>
        </div> 
        <div class="wel">
          

            <%
                s = request.getSession(false);
                if (s == null) {
                    out.print("<h3>hello user you have not login yet");
                } else {
                    out.print("<h3>welcome " + s.getAttribute("username") + "</h3>");
                }
            %>
        </div>
    <div class="content">
        <h1>Simplify your life.</h1>
        <h3>passkeeper remembers all your passwords, so you don't have to.</h3>
    </div> 
        <div class="home-hero__image home-hero__image-large">
            <img src="asd.png" alt="LastPass fills logins forms generate strong secure passwords " width="100%" />
        </div>
       
  

    </body>
</html>
