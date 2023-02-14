package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class forgotpass_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license\n");
      out.write("Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html\"; charset=\"UTF-8\">\n");
      out.write("        \n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                padding-top: 144px;\n");
      out.write("            }\n");
      out.write("            .border{\n");
      out.write("                border: 2px solid black;\n");
      out.write("                margin: auto;\n");
      out.write("                width: 40%;\n");
      out.write("                border: 2px solid #02B875;\n");
      out.write("                border-radius: 50px;\n");
      out.write("                box-shadow: 20px 20px #02B875;\n");
      out.write("                font-family: verdana, Helvetica, sans-serif;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .edittext{\n");
      out.write("                color: #146EB4;\n");
      out.write("                font-weight: bolder;\n");
      out.write("                font-size: 40px;\n");
      out.write("                padding: 20px 20px 0px 20px;\n");
      out.write("            }\n");
      out.write("            .edit1{\n");
      out.write("                padding: 0px 0px 0px 20px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .edit{\n");
      out.write("                margin: 20px;\n");
      out.write("            }\n");
      out.write("            input[type = text]{\n");
      out.write("                width: 510px;\n");
      out.write("                height: 38px;\n");
      out.write("                border-radius: 20px;\n");
      out.write("                padding: 0px 15px 0px 15px;\n");
      out.write("                font-family: verdana, Helvetica, sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("                box-shadow: 3px 3px #02B875;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            input[type = text1]{\n");
      out.write("                width: 205px;\n");
      out.write("                height: 38px;\n");
      out.write("                border-radius: 20px;\n");
      out.write("                font-family: verdana, Helvetica, sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("                padding: 0px 15px 0px 15px;\n");
      out.write("                box-shadow: 3px 3px #02B875;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            input[type = text2]{\n");
      out.write("                width: 205px;\n");
      out.write("                height: 38px;\n");
      out.write("                border-radius: 20px;\n");
      out.write("                font-family: verdana, Helvetica, sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("                padding: 0px 15px 0px 15px;\n");
      out.write("                box-shadow: 3px 3px #02B875;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            input[type = button]{\n");
      out.write("                width: 55px;\n");
      out.write("                height: 38px;\n");
      out.write("                border-radius: 20px;\n");
      out.write("                font-family: verdana, Helvetica, sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            input[type = submit]{\n");
      out.write("                width: 544px;\n");
      out.write("                height: 40px;\n");
      out.write("                border-radius: 20px;\n");
      out.write("                border-color: #146EB4;\n");
      out.write("                font-family: verdana, Helvetica, sans-serif;\n");
      out.write("                font-size: 15px;\n");
      out.write("                padding: 0px 15px 0px 15px;\n");
      out.write("                font-weight: bolder;\n");
      out.write("                box-shadow: 3px 3px #146EB4;\n");
      out.write("                color:white;\n");
      out.write("                background-color: #146EB4;\n");
      out.write("                margin-bottom: 40px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"border\">\n");
      out.write("            <div class=\"edittext\">\n");
      out.write("                <p>Find Your Account</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"edit1\">\n");
      out.write("                <p>Please enter your email address or mobile number to search for your account.</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"padding\">\n");
      out.write("                <form action=\"ForgotPassword\" method=\"post\">                 \n");
      out.write("                    <div class=\"edit\"><input type=\"text\" placeholder=\"Email(*)\" name=\"email\"></div>\n");
      out.write("                    <div class=\"edit\">\n");
      out.write("                        <label>\n");
      out.write("                            <input type=\"text1\" placeholder=\"Captcha\">\n");
      out.write("                            <input type=\"button\" value=\"Swap\">\n");
      out.write("                            <input type=\"text2\" placeholder=\"Input\">\n");
      out.write("                        </label>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"edit\">\n");
      out.write("                        <input type=\"submit\" value=\" + Yêu cầu cấp lại mật khẩu\">\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
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
