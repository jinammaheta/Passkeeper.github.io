<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
    <head>
        <title>Pass Keeper</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
    </head>
    <BODY>
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
                            }
                        %>

                    <li><a href="add.jsp" >Add</a></li>

                </ul>
            </div>
        </div>
        <div class="left1">
            <h2 id="heading">Create New Record</h2>
            <hr>
            <form name="domainform" action="encrypt" method="post">
                <label>Host-Name:<br></label><input type="text" name="domain" placeholder="Enter The Name of WebSite"><br>
                <label>Password:<br></label><input type="password" name="master" placeholder="Password"><br>
                <input type="submit" name="button_add" value="Add">
            </form>
        </div>
    </BODY>
</html>