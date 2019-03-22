<%@page import="java.sql.*,java.io.*" session="false"%>
<!DOCTYPE html>
<html>
    <head>

        <title></title>
    </head>
    <body>
        <%
            String typereq = request.getAttribute("type").toString();
            if (typereq.equals("login")) {
                String user = request.getParameter("userid");
                String pass = request.getParameter("pass");
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/passwordmanagement", "root", "");
                    Statement smt = conn.createStatement();
                    ResultSet rs = smt.executeQuery("select * from users");
                    while (rs.next()) {
                        if (user.equals(rs.getString(2)) || user.equals(rs.getString(3))) {
                            if (pass.equals(rs.getString(4))) {
                                HttpSession s = request.getSession();
                                user = rs.getString(1);
                                s.setAttribute("username", user);
                                user = rs.getString(3);
                                s.setAttribute("userid", user);
                                response.sendRedirect("index.jsp");

                            }

                        }

                    }
                } catch (Exception e) {
                    System.out.println("Exception caught" + e.toString());
                }
                
        %>
        
        <%@include file="invalid.jsp" %>
        <%            } 
                else if (typereq.equals("signup")) {
                String name = request.getAttribute("name").toString();
                String email = request.getAttribute("email").toString();
                String phone = request.getAttribute("phone").toString();
                String password = request.getAttribute("pass").toString();

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/passwordmanagement", "root", "");
                    PreparedStatement ps = conn.prepareStatement("insert into users values(?,?,?,?)");
                    ps.setString(1, name);
                    ps.setString(2, email);
                    ps.setString(3, phone);
                    ps.setString(4, password);
                    ps.executeUpdate();
                    response.sendRedirect("login.jsp");
                } catch (Exception e) {
                    Cookie c=new Cookie("Exception",e.toString());
                    response.addCookie(c);
                    System.out.println("Exception caught" + e.toString());
                }
            }
        %>
    </body>
</html>