import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Joiner
 */
@WebServlet("/Joiner")
public class Joiner extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Joiner() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
		}

		try {
			String id = request.getParameter("id");
			String pwd = request.getParameter("password");
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			String mobile = request.getParameter("mobile");
			String email = request.getParameter("email");
			con = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/web_pj", "ss", "6013");

			stmt = (Statement) con.createStatement();
			String sql = "insert into users(id, password, name, address, mobile, email, grade) values(?,?,?,?,?,?,'1')";
			pstmt = (PreparedStatement) con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, address);
			pstmt.setString(5, mobile);
			pstmt.setString(6, email);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException e) {
			}
		}
		response.sendRedirect("./index.jsp");
	}
}
