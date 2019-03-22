<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" import="java.util.Collections.*" %>
<html>

<head>
    <title>Pass Keeper</title>
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
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="how.html">How it works</a></li>
                    <li class="active"><a href="login.jsp">Login</a></li>
                    <li><a href="signup.jsp">Register</a></li>

                </ul>

            </div>
        </div>
    </nav>
    
    <div class="left1">
        <h3 class="heading">Login</h3>
        <hr>
        <form id="login" action="verify.jsp" method="post">
            <label>Username:</label><br>
            <input type="text" name="userid" placeholder="Username" required><br>
            <label>Password:</label><br>
            <input type="password" name="pass" placeholder="Password" required><br>
            <input type="submit" class="btn btn-primary" value="Signin">
            <input type="reset" class="btn btn-primary" value="Reset"><br>
            <a class=signuplink href="signup.jsp">Signup</a>
            <input type="hidden" name="type" value="login">
        </form>
    </div>
</body>

</html>