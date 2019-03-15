
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import static java.util.Collections.enumeration;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

public class verify extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String typereq = request.getParameter("type");
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
                            HttpSession s=request.getSession();
                            user=rs.getString(1);
                            s.setAttribute("username", user);
                            user=rs.getString(3);
                            s.setAttribute("userid", user);
                           
                            response.sendRedirect("index.jsp");
                            
                            
                        }

                    }

                }
                 request.setAttribute("count","1");
                response.sendRedirect("login.jsp");
            } catch (Exception e) {
                System.out.println("Exception caught" + e.toString());
            }
        } else if (typereq.equals("signup")) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("pass");
           
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/passwordmanagement", "root", "");
                out.println("connection established");
                PreparedStatement ps = conn.prepareStatement("insert into users values(?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, phone);
                ps.setString(4, password);
                ps.executeUpdate();
                response.sendRedirect("login.jsp");
            } catch (Exception e) {
                System.out.println("Exception caught" + e.toString());
            }

        }
    }
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
             doPost(request,response);
         }
}
 
