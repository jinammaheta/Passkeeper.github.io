package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Collections.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Pass Keeper</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"mystyle.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <div id=\"logo\">\n");
      out.write("                <img src=\"cyber-security-2537786_960_720.png\" alt=\"not found\" width=\"200\" height=\"80\"/>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"navigation\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"index.jsp\" >Home</a></li>\n");
      out.write("                    <li><a href=\"how.html\" >How it works</a></li>\n");
      out.write("                    <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                    <li><a href=\"signup.jsp\" >Register</a></li>\n");
      out.write("                    <li><a href=\"add.jsp\" >Add</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>  \n");
      out.write("        <div class=\"left\">\n");
      out.write("            <h2 id=\"heading\">Sign In</h2>\n");
      out.write("            <form name=\"signin\" action=\"verify.jsp\" method=\"post\">\n");
      out.write("                <input type=\"text\" name=\"userid\" placeholder=\"Username\" ><br>\n");
      out.write("                <input type=\"password\"  name=\"pass\" placeholder=\"Password\"><br>\n");
      out.write("                <input type=\"submit\" value=\"signin\"><br>\n");
      out.write("                <input type=\"hidden\" name=\"type\" value=\"login\">\n");
      out.write("                <a href=\"signup.jsp\">Signup</a>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
