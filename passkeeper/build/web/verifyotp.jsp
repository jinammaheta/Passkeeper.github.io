<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name="";
            String email="";
            String phone="";
            String pass="";
            String otp="";
            Cookie cookies[] = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("name")) {
                        name=cookie.getValue();
                        request.setAttribute("name", name);
                    }
                    if (cookie.getName().equals("email")) {
                        email=cookie.getValue();
                        request.setAttribute("email", email);
                    }
                    if (cookie.getName().equals("phone")) {
                        phone=cookie.getValue();
                        request.setAttribute("phone", phone);
                    }
                    if (cookie.getName().equals("pass")) {
                        pass=cookie.getValue();
                        request.setAttribute("pass", pass);
                    }
                    if (cookie.getName().equals("otp")) {
                        otp=cookie.getValue();
                        
                    }
                }
            }
            String uotp=request.getParameter("userotp");
            request.setAttribute("type", "signup");
            if(uotp.equals(otp))
            {
                RequestDispatcher rd=request.getRequestDispatcher("verify.jsp");
                rd.forward(request, response);
            }
            else
            {
                response.sendRedirect("signup.jsp");
            }
        %>
    
    </body>
</html>
