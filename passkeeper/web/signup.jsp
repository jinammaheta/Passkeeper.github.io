<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
    <head>
        <link rel=stylesheet href="nav.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function confirm()
            {
                if (document.getElementById("cpass").value !== document.getElementById("pass").value)
                {
                    document.getElementById("cpnotify").innerHTML = "Password not matched";
                    return false;
                } else if ((document.getElementById("enotify").innerHTML == "") && (document.getElementById("pnotify").innerHTML == ""))
                {
                    return false;
                }
                return true;
            }
            function fetch(str)
            {
                req = new XMLHttpRequest();
                req.open("GET", "http://localhost:8080/passkeeper/check.jsp?type=email&email=" + str, true);
                req.send();
                req.onreadystatechange = function ()
                {
                    if (req.readyState == 4 && req.status == 200)
                    {
                        document.getElementById("enotify").innerHTML = req.responseText;
                    }
                };
            }
            function fetchphone(str)
            {
                req = new XMLHttpRequest();
                req.open("GET", "http://localhost:8080/passkeeper/check.jsp?type=phone&phone=" + str, true);
                req.send();
                req.onreadystatechange = function ()
                {
                    if (req.readyState == 4 && req.status == 200)
                    {
                        document.getElementById("pnotify").innerHTML = req.responseText;
                    }
                };
            }
        </script>
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
                        <li > <a href="index.jsp">Home</a></li>
                        <li><a href="how.html">How it works</a></li>
                        <li><a href=login.jsp>Login</a></li>
                        <li class="active"><a href='signup.jsp'>Register</a></li>
                          

                    </ul>

                </div>
            </div>
        </nav>
        <div class="left2">
            <h3 class="heading">Register</h3>
            <hr>
            <form action="verifyemail.jsp" id=r1 method="post" onsubmit="return confirm();">
                <label>Name:</label>  <br><input type="text" name="name" placeholder="Enter your name" required><br>
                <label>Email:</label> <br>
                <input type="email" id="email" name="email" onfocusout="fetch(this.value);" placeholder="abc@gmail.com" required pattern="[\w-]+@([\w-]+\.)+[\w-]+"> <div id="enotify"></div>
                <label>Phone-No:</label> <br><input type="text" name="phone" pattern="[0-9]{10}" onfocusout="fetchphone(this.value);" required title="Invalid Mobile Number"><div id="pnotify"></div>
                <label>Password:</label> <br><input type="password" name="pass" id="pass" required ><br>
                <label>Confirm:</label> <br><input type="password" id="cpass" onpaste="return false" required><div id="cpnotify"></div><br>
                <input type="hidden" name="type" value="signup">
                <input type="submit" class="btn btn-primary" value="Signup" >
            </form>
        </div>
    </body>
</html>
