package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import models.Product;
import java.util.ArrayList;
import models.Users;

public final class detail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <title>LapTopGaming</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                margin-top: 20px;padding: 0;\n");
      out.write("                background: #FFFFFF;\n");
      out.write("                text-align: justify;\n");
      out.write("                font-family: \"Helvetica Neue\", \"Lucida Grande\", \"Segoe UI\", Arial, Helvetica, Verdana, sans-serif;\n");
      out.write("                font-size:  0.875em;\n");
      out.write("                color: #616161;\t/*x??m*/\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h1 {\n");
      out.write("                padding-top: 10px;\n");
      out.write("                padding-bottom: 50px;\n");
      out.write("                padding-left: 50px;\n");
      out.write("                color: #000000;\n");
      out.write("                font-weight: normal;\n");
      out.write("                font-size: 2em;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            p {\n");
      out.write("                font-size: 14px; \n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Menu */\n");
      out.write("\n");
      out.write("            #menuContaniner {\n");
      out.write("                width: 500px;\n");
      out.write("                float: right;\n");
      out.write("                margin: -60px 0 0 0;\n");
      out.write("                background-color:#FFFFFF;/* tr???ng */\n");
      out.write("            }\n");
      out.write("            ul.main_nav {\n");
      out.write("                margin: 0 auto;\n");
      out.write("                margin-left: -150px;\t\n");
      out.write("                padding: 0;\n");
      out.write("                list-style: none;\n");
      out.write("                height: 50px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            ul.main_nav li {\n");
      out.write("                border-right: 1px solid #BCBCBC;\n");
      out.write("                float: left;\n");
      out.write("                position: relative;\n");
      out.write("                text-align: center;\n");
      out.write("                margin: 0;padding: 0;\n");
      out.write("                display: inline;\n");
      out.write("                height: 45px;\n");
      out.write("                padding-top: 5px;\n");
      out.write("            }\n");
      out.write("            ul.main_nav li a {\n");
      out.write("                color: #000000;\n");
      out.write("                width: 100px;\n");
      out.write("                padding: 10px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Content */\n");
      out.write("\n");
      out.write("            #mainContainer {\n");
      out.write("                width: 1200px;\n");
      out.write("                height:100%;\n");
      out.write("                margin: 40px auto;\n");
      out.write("                padding: 20px 5px;\n");
      out.write("                background: #FFFACD;\n");
      out.write("                boder:10px solid black;\n");
      out.write("            }\n");
      out.write("            /* about */\n");
      out.write("            div.about {\n");
      out.write("                boder: 10px solid pink;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            input[type=submit] {\n");
      out.write("                background-color: #4CAF50;\n");
      out.write("                color: white;\n");
      out.write("                padding: 12px 20px;\n");
      out.write("                border: none;\n");
      out.write("                width: 100px;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=submit]:hover {\n");
      out.write("                background-color: #45a049;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        ");

            HttpSession s = request.getSession(true);
            String us = (String) s.getAttribute("username");
            String admin = (String) s.getAttribute("admin");
            Product p = (Product)request.getAttribute("product");
        
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- START HEADER -->\n");
      out.write("          <div id=\"header\" style=\"width: 1000px; height: 100px; margin: 0 auto; background-color:#FFFFFF; border: none solid #8C0209;\">\n");
      out.write("            <div>\n");
      out.write("                <h1 style=\"float:left; margin-left:15px; font-size:40px;\">\n");
      out.write("                    <span style=\"\"><a href=\"home\" style=\"text-decoration: none;color:#DAA520\">LapTop</a> </span><span style=\"\"><a href=\"home\" style=\"text-decoration: none;color:#000000\">Gaming</a></span>\n");
      out.write("                </h1>\n");
      out.write("                <p style=\"float:left;margin-top: 70px;font-weight: 900px;margin-left: 5px;word-spacing: 2px;color:black;font-size:15px;\">\n");
      out.write("                   LapTopGaming Store\n");
      out.write("                </p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- END HEADER -->\n");
      out.write("\n");
      out.write("        <!-- START MENU -->\n");
      out.write("        <section id=\"menuContaniner\">\n");
      out.write("            <ul class=\"main_nav\">\n");
      out.write("\n");
      out.write("                ");
 if (us != null) {
      out.write("\n");
      out.write("                <li ><a  href=\"about\" >About</a></li>\n");
      out.write("                <li ><a  href=\"shop\" style=\"color:green;\">Shop</a></li>\n");
      out.write("\n");
      out.write("                ");
 if (admin != null) {
      out.write("\n");
      out.write("                <li ><a  href=\"manager\">Manager account</a></li>\n");
      out.write("                <li ><a  href=\"manageritem\">Manager Product</a></li>\n");
      out.write("                    ");
} else {
      out.write("\n");
      out.write("                <li ><a  href=\"cart\">My Order</a></li>");
}
      out.write("\n");
      out.write("                <li ><a  href=\"logout\">Logout</a></li>\n");
      out.write("                    ");
} else {
      out.write("\n");
      out.write("                <li ><a  href=\"about\">About </a></li>\n");
      out.write("                <li ><a  href=\"shop\" style=\"color:green;\">Shop</a></li>\n");
      out.write("                <li ><a  href=\"login\">Login</a></li>\n");
      out.write("                <li ><a  href=\"register\">Register</a></li>\n");
      out.write("                <li ><a  href=\"contact\">Contact</a></li>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("            </ul>\n");
      out.write("        </section>\t\n");
      out.write("        <!-- END MENU -->\n");
      out.write("\n");
      out.write("        <!-- START CONTENT PAGE -->\n");
      out.write("        <section id=\"mainContainer\">\n");
      out.write("            <div class=\"about\" >\n");
      out.write("                <h2 style=\"font-size:50px;font-family:Time New Roman\">");
      out.print(p.getProductName());
      out.write("</h2>\n");
      out.write("                <div style=\"margin-top:50px;\">\n");
      out.write("                    <img src=\"img/");
      out.print(p.getProductImage());
      out.write("\" style=\"width:370px;height:400px;\"></img>\n");
      out.write("                </div>\n");
      out.write("                    <div style=\"font-size:20px;color:#556B2F;line-height:2em;\">Price:<span style=\"color: crimson;font-size: 30px;\"> ");
      out.print(p.getProductPrice());
      out.write("</span> </div>\n");
      out.write("                \n");
      out.write("                <div> \n");
      out.write("                    <form method=\"post\" action=\"detail?pid=");
      out.print(p.getProductID());
      out.write("&price=");
      out.print(p.getProductPrice() );
      out.write("\" >\n");
      out.write("                        <label style=\"margin-top:20px;font-size:20px;color:#556B2F;line-height:2em;\">\n");
      out.write("                            Choose Quantity:</label> <input style=\"width: 80px;\" type=\"number\" name=\"quantity\" value=\"1\" /> \n");
      out.write("                        <br><p>  \n");
      out.write("                        <input type=\"submit\" value=\"BUY\"/>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- end page -->\n");
      out.write("\n");
      out.write("        <!-- start Footer-->\n");
      out.write("        <div id=\"footer\" style=\"height: 250px; margin: 0 auto;padding: 0 20px;\n");
      out.write("             background-color: #D3D3D3; border: none solid #8C0209;\">\n");
      out.write("         <p style=\"float:left; margin:70px; font-size:60px;\"> <span style=\"color:#DAA520\">LapTop</span><span style=\"color:#000000\">Gaming</span>\n");
      out.write("                </p>\n");
      out.write("\n");
      out.write("              <p style=\"float:left;margin-top:170px;margin-left:-350px;\">\n");
      out.write("                <a href=\"https://www.instagram.com/clongcena11/\"><img src=\"src/ins.png\" style=\"width:65px; height:65px;\"></img>\n");
      out.write("                    <a href=\"https://www.facebook.com/long.chu.71653\"><img src=\"src/fb.png\" style=\"width:65px; height:65px;\"></img>\n");
      out.write("\n");
      out.write("                        </p>\n");
      out.write("\n");
      out.write("                        <p style=\"float:right;margin:40px;text-align:left;font-size:15px;margin-right:190px;\">\n");
      out.write("                            <b>Our Story</b><br /><br />\n");
      out.write("                            <span style=\"color:#556B2F;\">LapTopGaming not only brings customers the latest and highest quality genuine products, but <br/>\n");
      out.write("                                also a place for customers to experience products comfortably under the advice of trained staff and technicians. repertoires. . The difference of LapTopGaming is also separate after-sales policies such as Gold Warranty: \n");
      out.write("                                <br />  Warranty for both drops, water damage, 1-for-1 policy within 30 days <br/>   \n");
      out.write("                             \n");
      out.write("                            </span>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- end page -->\n");
      out.write("                            </body>\n");
      out.write("                            </html>\n");
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
