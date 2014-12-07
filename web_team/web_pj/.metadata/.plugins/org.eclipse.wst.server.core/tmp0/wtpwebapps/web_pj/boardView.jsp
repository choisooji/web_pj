<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*, Util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome To 청춘극장</title>
<link rel="stylesheet" type="text/css" href="./css/boardView.css">
</head>
<body>
	<%
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
			String sql = "select * from boards where id='"
					+ request.getParameter("id") + "'";
			pstmt = (PreparedStatement) con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			String id = "";
			String title = "";
			String author = "";
			String upload = "";
			String contents = "";

			if (rs.next()) {
				id = rs.getString("id");
				title = rs.getString("title");
				author = rs.getString("author");
				upload = rs.getString("upload");
				contents = rs.getString("contents");
			}
	%>
	<div class="login">
		<!--Login JSP-->
		<jsp:include page="./loginWidget.jsp" />
	</div>
	<div class="main">
		<!-- 메인화면으로 돌아가기 -->
		<a href="./index.jsp">Welcome To 청춘극장</a>
	</div>

	<div id="content">
		<div id="left">
			<br />

			<div>
				<a href="./board.jsp">게시판</a>
			</div>

		</div>

		<div id="right">

			<%=title%>
			<p>
				번호 :<%=id%>
				작성자 :
				<%=author%>
				작성 일시 :<%=upload%></p>
			<p><%=contents%></p>
			<table>
				<%
					sql = "select * from reply where board_id='"
								+ request.getParameter("id") + "'";
						pstmt = (PreparedStatement) con.prepareStatement(sql);
						rs = pstmt.executeQuery();
						while (rs.next()) {
							contents = rs.getString("contents");
				%>
				<tr>
					<td><%=contents%></td>
				</tr>
				<%
					}
				%>
			</table>


			<form method="post" action="AddReply">
				<input type="text" name='contents' placeholder="댓글을 입력하세요">
				<input type="hidden" name="board_id" value="<%=id%>"> <input
					type="submit" value="댓글달기">
			</form>
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
		</div>
	</div>
	<div id="footer">
		<hr />
		상호 : 청춘극장 | 전화번호 : 010-9437-2647 | 주소 : 경기도 용인시 처인구 남동 <br> 대표 :
		조수현, 최수지| 사업자 등록번호 123-12-12345 |
	</div>
</body>
</html>