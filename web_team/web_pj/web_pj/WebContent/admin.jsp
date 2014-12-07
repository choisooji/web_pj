<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*, Util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome To 청춘극장</title>
</head>
<body>
	<%
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
	%>
	<h1>
		<a href="./index.jsp">Welcome To 청춘극장</a>
	</h1>
	<h2>List of Users</h2>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>PASSWORD</th>
			<th>NAME</th>
			<th>ADDRESS</th>
			<th>MOBILE</th>
			<th>EMAIL</th>
			<th>GRADE</th>
			<th>일반설정</th>
			<th>단골설정</th>
			<th>강제탈퇴</th>
		</tr>
		<%
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
		%>
		<tr>
			<td><%=id%></td>
			<td><%=password%></td>
			<td><%=name%></td>
			<td><%=address%></td>
			<td><%=mobile%></td>
			<td><%=email%></td>
			<td><%=gradeKor%></td>
			<td><a href="./SetClass?id=<%=id%>&grade=1"><input
					type="button" value="일반"></a></td>
			<td><a href="./SetClass?id=<%=id%>&grade=2"><input
					type="button" value="단골"></a></td>
			<td><a href="./UserDel?id=<%=id%>"><input type="button"
					value="강퇴"></a></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
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
	%>
</body>
</html>