

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

@WebServlet("/BoardUpload")
public class BoardUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardUpload() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
		}

		try {
			String title = request.getParameter("title");
			String author = request.getParameter("author");
			String contents = request.getParameter("contents");
			
			con = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/web_pj", "ss", "6013");

			stmt = (Statement) con.createStatement();
			String sql = "insert into boards(title, author, upload, contents) values(?,?,curdate(),?)";
			pstmt = (PreparedStatement) con.prepareStatement(sql);
			
			pstmt.setString(1, title);
			pstmt.setString(2, author);
			pstmt.setString(3, contents);
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
		response.sendRedirect("./board.jsp");
	}

}
