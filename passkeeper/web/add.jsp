<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pass Keeper</title>
    <link rel="stylesheet" type="text/css" href="nav.css">
    <link rel=stylesheet href="nav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<BODY>\
    <div class=logo>
        <div class="logoimage">
            <img src="Capture.PNG" alt="not found" width="150" height="80" />
        </div>
        <div class="logoname">
            <img src="Capture2.PNG" alt="not found" width="200" height="80" />
        </div>
    </div>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li > <a href="index.jsp">Home</a></li>
                    <li><a href="how.html">How it works</a></li>
                    <%
                                HttpSession ss = request.getSession(false);
                                if (ss == null) {
                                    out.print("<li><a href=login.jsp>Login</a></li>");
                                     out.println("<li><a href='signup.jsp'>Register</a></li>");
                                } else {
                                    out.println("<li><a href='Logout.jsp'>Logout</a></li>");
                                    
                                }
                                
                            %>
                            <li class="active"><a href="add.jsp">Add</a></li>

                </ul>

            </div>
        </div>
    </nav>
    
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