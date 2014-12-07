
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Util.Constants;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/AddReply")
public class AddReply extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddReply() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String board_id = request.getParameter("board_id");
		String contents = request.getParameter("contents");
		
		if (board_id == null || contents == null) {
			response.sendRedirect("./boardView.jsp?id=" + board_id);
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
			con = (Connection) DriverManager.getConnection(Constants.DBADDRESS,
					Constants.DBID, Constants.DBPASSWORD);
			String sql = "insert into reply(board_id, contents) values( ? , ? )";
			pstmt = (PreparedStatement) con.prepareStatement(sql);

			pstmt.setString(1, board_id);
			pstmt.setString(2, contents);
			pstmt.executeUpdate();

			response.sendRedirect("./boardView.jsp?id=" + board_id);
			
			
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
	}

}
