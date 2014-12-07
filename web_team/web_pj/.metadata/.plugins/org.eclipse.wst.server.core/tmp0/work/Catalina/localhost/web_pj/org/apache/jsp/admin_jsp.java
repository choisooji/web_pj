/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2014-12-07 09:34:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import Util.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Welcome To 청춘극장</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");

		if (!session.getAttribute("id").equals("admin")) {
			response.sendRedirect("./index.jsp");
			return;
		}

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
		}

		try {
			con = (Connection) DriverManager.getConnection(
					Constants.DBADDRESS, Constants.DBID,
					Constants.DBPASSWORD);
			String sql = "select * from users";
			pstmt = (PreparedStatement) con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			String id = "";
			String password = "";
			String name = "";
			String address = "";
			String mobile = "";
			String email = "";
			String grade = "";
	
      out.write("\r\n");
      out.write("\t<h1>\r\n");
      out.write("\t\t<a href=\"./index.jsp\">Welcome To 청춘극장</a>\r\n");
      out.write("\t</h1>\r\n");
      out.write("\t<h2>List of Users</h2>\r\n");
      out.write("\t<table border=\"1\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<th>ID</th>\r\n");
      out.write("\t\t\t<th>PASSWORD</th>\r\n");
      out.write("\t\t\t<th>NAME</th>\r\n");
      out.write("\t\t\t<th>ADDRESS</th>\r\n");
      out.write("\t\t\t<th>MOBILE</th>\r\n");
      out.write("\t\t\t<th>EMAIL</th>\r\n");
      out.write("\t\t\t<th>GRADE</th>\r\n");
      out.write("\t\t\t<th>일반설정</th>\r\n");
      out.write("\t\t\t<th>단골설정</th>\r\n");
      out.write("\t\t\t<th>강제탈퇴</th>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t");

			while (rs.next()) {
					id = rs.getString("id");
					password = rs.getString("password");
					name = rs.getString("name");
					address = rs.getString("address");
					mobile = rs.getString("mobile");
					email = rs.getString("email");
					grade = rs.getString("grade");
					String gradeKor = "";
					if (grade.equals("1"))
						gradeKor = "일반회원";
					else
						gradeKor = "단골회원";
		
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>");
      out.print(id);
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(password);
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(name);
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(address);
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(mobile);
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(email);
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(gradeKor);
      out.write("</td>\r\n");
      out.write("\t\t\t<td><a href=\"./SetClass?id=");
      out.print(id);
      out.write("&grade=1\"><input\r\n");
      out.write("\t\t\t\t\ttype=\"button\" value=\"일반\"></a></td>\r\n");
      out.write("\t\t\t<td><a href=\"./SetClass?id=");
      out.print(id);
      out.write("&grade=2\"><input\r\n");
      out.write("\t\t\t\t\ttype=\"button\" value=\"단골\"></a></td>\r\n");
      out.write("\t\t\t<td><a href=\"./UserDel?id=");
      out.print(id);
      out.write("\"><input type=\"button\"\r\n");
      out.write("\t\t\t\t\tvalue=\"강퇴\"></a></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t");

			}
		
      out.write("\r\n");
      out.write("\t</table>\r\n");
      out.write("\t");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
				}
		}
	
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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