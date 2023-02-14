package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newpassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<!doctype html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset='utf-8'>\n");
      out.write("        <meta name='viewport' content='width=device-width, initial-scale=1'>\n");
      out.write("        <title>Snippet - BBBootstrap</title>\n");
      out.write("        <link\n");
      out.write("            href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'\n");
      out.write("            rel='stylesheet'>\n");
      out.write("        <link\n");
      out.write("            href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'\n");
      out.write("            rel='stylesheet'>\n");
      out.write("        <script type='text/javascript'\n");
      out.write("        src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>\n");
      out.write("        <style>\n");
      out.write("            .placeicon {\n");
      out.write("                font-family: fontawesome\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .custom-control-label::before {\n");
      out.write("                background-color: #146EB4;\n");
      out.write("                border: #dee2e6\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body\n");
      out.write("        <div>\n");
      out.write("        <!-- Container containing all contents -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row justify-content-center\">\n");
      out.write("                <div class=\"col-12 col-md-9 col-lg-7 col-xl-6 mt-5\">\n");
      out.write("                    <!-- White Container -->\n");
      out.write("                    <div class=\"container bg-white rounded mt-2 mb-2 px-0\">\n");
      out.write("                        <!-- Main Heading -->\n");
      out.write("                        <div class=\"row justify-content-center align-items-center pt-3\">\n");
      out.write("                            <h1>\n");
      out.write("                                <strong>Reset Password</strong>\n");
      out.write("                            </h1>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"pt-3 pb-3\">\n");
      out.write("                            <form class=\"form-horizontal\" action=\"newPassword\" method=\"POST\">\n");
      out.write("                                <!-- User Name Input -->\n");
      out.write("                                <div class=\"form-group row justify-content-center px-3\">\n");
      out.write("                                    <div class=\"col-9 px-0\">\n");
      out.write("                                        <input type=\"text\" name=\"pass\" placeholder=\"&#xf084; &nbsp; New Password\"\n");
      out.write("                                               class=\"form-control border-info placeicon\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- Password Input -->\n");
      out.write("                                <div class=\"form-group row justify-content-center px-3\">\n");
      out.write("                                    <div class=\"col-9 px-0\">\n");
      out.write("                                        <input type=\"password\" name=\"pass2\"\n");
      out.write("                                               placeholder=\" Confirm New Password\"\n");
      out.write("                                               class=\"form-control border-info placeicon\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <div style=\"display: none\" class=\"col-9 px-0\">\n");
      out.write("                                        <input style=\"display: none\" name=\"email\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("           \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <!-- Log in Button -->\n");
      out.write("                                <div class=\"form-group row justify-content-center\">\n");
      out.write("                                    <div class=\"col-3 px-3 mt-3\">\n");
      out.write("                                        <input type=\"submit\" value=\"Reset\"\n");
      out.write("                                               class=\"btn btn-block btn-info\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                        <div >\n");
      out.write("                        <div class=\"row justify-content-center\">\n");
      out.write("                            <h5>\n");
      out.write("                                <a href=\"#\" class=\"text-danger\"> Login</a>\n");
      out.write("                            </h5>\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <script type='text/javascript'\n");
      out.write("    src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>\n");
      out.write("\n");
      out.write("</body>\n");
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
