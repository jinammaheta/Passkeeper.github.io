
<%@page contentType="text/html"  import="java.util.Random" pageEncoding="UTF-8" import="p1.*" language="java" session="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String dest=request.getParameter("email");
            Random r=new Random();
            String otp="";
            int len=6;
            String num="0123456789";
            for(int i=0;i<len;i++)
            otp+=num.charAt(r.nextInt(10));
            JavaEmail.main(dest,otp);
            request.setAttribute("otp",otp);
            RequestDispatcher rd=request.getRequestDispatcher("otp.jsp");
            rd.forward(request, response);
            %>
            
    </body>
</html>
