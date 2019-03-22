
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String domain = request.getParameter("domain");
            String userid = request.getParameter("userid");
            String pass = request.getParameter("master");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/passwordmanagement", "root", "");
                Statement smt = conn.createStatement();
                String user = new String();
                String password = new String();
                String q = "select * from users where (email='" + userid + "' or phone='" + userid + "') and (password='" + pass + "')";
                ResultSet rs = smt.executeQuery(q);
                if (rs.next()) {
                    userid = rs.getString(3);
                    rs = smt.executeQuery("select * from passwords where userid='" + userid + "'");
                    while (rs.next()) {
                        if (domain.equals(rs.getString(3))) {
                            password = rs.getString(4);
                            break;
                        }
                    }

                    out.print("Your Password is:<input type=password value="+password+">");

                }
                else
                {
                   out.println("Sorry! not matched");
                    
                }
            } catch (Exception e) {
                System.out.println("Exception caught" + e.toString());
            }
        %>
    </body>
</html>
