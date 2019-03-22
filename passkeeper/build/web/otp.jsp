<%@page contentType="text/html" pageEncoding="UTF-8" import="p1.*" language="java" session="false" %>
<%
    Cookie cname = new Cookie("name", request.getParameter("name"));
    Cookie cemail = new Cookie("email", request.getParameter("email"));
    Cookie cphone = new Cookie("phone", request.getParameter("phone"));
    Cookie cpass = new Cookie("pass", request.getParameter("pass"));
    Cookie cotp = new Cookie("otp", request.getAttribute("otp").toString());
    response.addCookie(cname);
    response.addCookie(cemail);
    response.addCookie(cphone);
    response.addCookie(cpass);
    response.addCookie(cotp);
%>
<!DOCTYPE html>
<html>

    <head>
        <link rel=stylesheet href="nav.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>JSP Page</title>

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
                                } else {
                                    out.println("<li><a href='Logout.jsp'>Logout</a></li>");
                                    out.println(" <li><a href='add.jsp' >Add</a></li>");
                                }

                            %>

                    </ul>
                </div>
            </div>
        </nav>

        <div class="left1">
            <h2 id="heading">Verify</h2>
            <hr>
            <form name="otpv"  action="verifyotp.jsp" method="post">
                <label>Enter 6 Digit OTP:<br></label><input type="text" name="userotp" id="userotp" required><br>
                <input type="hidden" name="type" value="signup">
                <input type="submit" class="btn btn-primary" name="verify" value="Verify">
            </form>

        </div>


    </body>

</html>