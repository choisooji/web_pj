import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Util.Constants;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/UserChange")
public class UserChange extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserChange() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
		}

		try {
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			String mobile = request.getParameter("mobile");
			String email = request.getParameter("email");
			String grade = request.getParameter("grade");

			con = (Connection) DriverManager.getConnection(Constants.DBADDRESS,
					Constants.DBID, Constants.DBPASSWORD);
			String sql = "update users set id = ? , password = ? , name = ? , address = ? , mobile = ? , email = ? , grade = ? where id= ? ";
			pstmt = (PreparedStatement) con.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, address);
			pstmt.setString(5, mobile);
			pstmt.setString(6, email);
			pstmt.setString(7, grade);
			pstmt.setString(8, id);

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
			response.sendRedirect("./index.jsp");
		}
	}

}
