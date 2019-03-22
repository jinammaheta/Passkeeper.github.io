<%@page import="java.sql.*,java.io.*" session="false"%>
<!DOCTYPE html>
<html>
    <head>

        <title></title>
    </head>
    <body>
        <%
            String type=request.getParameter("type");
           
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/passwordmanagement", "root", "");
                Statement smt = conn.createStatement();
                ResultSet rs;
                if(type.equals("email"))
                {
                    String email=request.getParameter("email");
                    rs = smt.executeQuery("select * from users where email='" + email + "'");
                }
                
                else
                {
                      String phone=request.getParameter("phone");
                      rs= smt.executeQuery("select * from users where phone='" + phone + "'");
                }
                    
                if(rs.next())
                {
                    out.print("Already Registerd");
                }
                else
                {
                    out.print("");
                }

            } catch (Exception e) {
                System.out.println("Exception caught" + e.toString());
            }
        %>
    </body>
</html>