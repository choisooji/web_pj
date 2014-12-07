<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*, Util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome To 청춘극장</title>
<link rel="stylesheet" type="text/css" href="./css/board.css">
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
			String sql = "select * from boards";
			pstmt = (PreparedStatement) con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			String id = "";
			String title = "";
			String author = "";
			String upload = "";
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
		<div id="right">
			<br />
			<table border="1">
				<tr>
					<td>번호</td>
					<td>제 목</td>
					<td>작 성 자</td>
					<td>날 짜</td>
				</tr>
				<%
					while (rs.next()) {
							id = rs.getString("id");
							title = rs.getString("title");
							author = rs.getString("author");
							upload = rs.getString("upload");
				%>
				<tr>
					<td><%=id%></td>
					<td><a href='boardView.jsp?id=<%=id%>'><%=title%></a></td>
					<td><%=author%></td>
					<td><%=upload%></td>
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
			<br/>
			<a href="boardWriter.jsp"><input type="button" value="글쓰기"></a>
		</div>

		<div id="left">
		<br />
			<div>
				<a href="./board.jsp">게시판</a>
			</div>
		</div>
	</div>
	<div id="footer">
		<hr />
		상호 : 청춘극장 | 전화번호 : 010-9437-2647 | 주소 : 경기도 용인시 처인구 남동 <br> 대표 :
		조수현, 최수지| 사업자 등록번호 123-12-12345 |
	</div>
</body>
</html>