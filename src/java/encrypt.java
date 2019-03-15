
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.HttpSession;
import static p1.MD5.computeMD5;
import static p1.MD5.toHexString;

public class encrypt extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String dom = request.getParameter("domain");
        String masterpassword = request.getParameter("master");
        String finalpassword=masterpassword+dom;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/passwordmanagement", "root", "");
            PreparedStatement ps = conn.prepareStatement("insert into passwords values(?,?,?,?)");
            HttpSession s = request.getSession(false);   
            String userid = s.getAttribute("userid").toString();
            String enpass = toHexString(computeMD5(finalpassword.getBytes()));
            ps.setString(1, userid);
            ps.setString(2, masterpassword);
            ps.setString(3, dom);
            ps.setString(4, enpass);
            ps.executeUpdate();
            response.sendRedirect("add.jsp");
        } catch (Exception e) {
            System.out.println("Exception caught" + e.toString());
        }

    }
}
