
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class send extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
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
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title></title>");
                out.println("</head>");
                out.println("<body>");
                out.println("Your Password is:<input type=text oncopy='return true;' value=" + password + ">");
                out.println("</body>");
                out.println("</html>");
            }
            else
            {
                RequestDispatcher rd=request.getRequestDispatcher("popup.html");
                rd.forward(request, response);
            }

        } catch (Exception e) {
            System.out.println("Exception caught" + e.toString());
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
