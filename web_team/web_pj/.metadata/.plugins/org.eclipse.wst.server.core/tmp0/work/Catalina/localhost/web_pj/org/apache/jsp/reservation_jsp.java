/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2014-12-07 09:34:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class reservation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Welcome To 청춘극장</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/main.css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"./scripts/jquery-1.10.2.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"./scripts/joincheck.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction price(show, number, price) {\r\n");
      out.write("\t\tvar show = document.getElementById(show);\r\n");
      out.write("\t\tvar number = document.getElementById(number);\r\n");
      out.write("\t\tvar price = document.getElementById(price);\r\n");
      out.write("\r\n");
      out.write("\t\tprice.value = show.value * number.value;\r\n");
      out.write("\r\n");
      out.write("\t\treturn;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction total() {\r\n");
      out.write("\t\tvar price1 = parseInt(document.getElementById(\"showPrice1\").value);\r\n");
      out.write("\r\n");
      out.write("\t\tsum = price1;\r\n");
      out.write("\t\tdocument.getElementById(\"total\").value = sum;\r\n");
      out.write("\r\n");
      out.write("\t\treturn sum;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t<!--\r\n");
      out.write("\t-->\r\n");
      out.write("</script>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"wrap\">\r\n");
      out.write("\t\t<div class=\"login\">\r\n");
      out.write("\t\t\t<!--Reservation JSP-->\r\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./loginWidget.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t<div class=\"contents\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<a href=\"./index.jsp\"><h1>Welcome To 청춘극장</h1></a>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"content\">\r\n");
      out.write("\t\t\t\t<table id=\"itemTable\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>공연 이름</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><select id=\"show\"\r\n");
      out.write("\t\t\t\t\t\t\t\tonChange=\"price('show', 'showNu', 'showPrice1')\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"0\">선택안함</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"30000\">라이어</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"30000\">작업의 정석</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"30000\">죽여주는 이야기</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"30000\">옥탑방 고양이</option>\r\n");
      out.write("\t\t\t\t\t\t\t</select></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>날짜</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><select id=\"showDa\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"1\">1일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"2\">2일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"3\">3일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"4\">4일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"5\">5일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"6\">6일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"7\">7일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"8\">8일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"9\">9일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"10\">10일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"11\">11일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"12\">12일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"13\">13일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"14\">14일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"15\">15일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"16\">16일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"17\">17일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"18\">18일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"19\">19일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"20\">20일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"21\">21일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"22\">22일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"23\">23일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"24\">24일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"25\">25일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"26\">26일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"27\">27일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"28\">28일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"29\">29일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"30\">30일</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"31\">31일</option>\r\n");
      out.write("\t\t\t\t\t\t\t</select></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>매수</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><select id=\"showNu\"\r\n");
      out.write("\t\t\t\t\t\t\t\tonChange=\"price('show', 'showNu', 'showPrice1');total()\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"0\">0</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"1\">1</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"2\">2</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"3\">3</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"4\">4</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"5\">5</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"6\">6</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"7\">7</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"8\">8</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"9\">9</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"10\">10</option>\r\n");
      out.write("\t\t\t\t\t\t\t</select></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" id=\"showPrice1\" value=\"0\" readonly />\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t<tfoot>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<th colspan=\"2\">총금액</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th><input type=\"text\" id=\"total\" readonly></th>\r\n");
      out.write("\t\t\t\t\t\t\t<th><a href=\"확인\"><input type=\"button\" value=\"확인\"></a></th>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</tfoot>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}