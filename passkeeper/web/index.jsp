<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>

<head>
    <title>PassKeeper</title>
    <style>
       
    </style>
    <link rel=stylesheet href="nav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
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
                    <li class="active"> <a href="index.jsp">Home</a></li>
                    <li><a href="how.html">How it works</a></li>
                    <%
                    HttpSession ss = request.getSession(false);
                    if (ss == null) {
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
    </nav>

    <div class="wel">
        <%
                ss = request.getSession(false);
                if (ss == null) {
                    out.print("<h4 style='color:red;'><a href=login.jsp>Login First</a></h4>");
                } else {
                    out.print("<h3>welcome " + ss.getAttribute("username") + "</h3>");
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