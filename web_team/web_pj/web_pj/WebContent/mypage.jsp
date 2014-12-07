<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*, Util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome To 청춘극장</title>
</head>
<body>
	<%
		if (session.getAttribute("id") == null) {
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
		con = (Connection) DriverManager.getConnection(Constants.DBADDRESS,
				Constants.DBID, Constants.DBPASSWORD);
		String sql = "select * from users where id= ? ";
		pstmt = (PreparedStatement) con.prepareStatement(sql);
		
		pstmt.setString(1, session.getAttribute("id").toString());
		rs = pstmt.executeQuery();

		String id="";
		String password="";
		String name="";
		String address="";
		String mobile="";
		String email="";
		String grade="";
		
		%>
		<h1><a href="./index.jsp">Welcome To 청춘극장</a></h1>
		<h2>내 정보</h2>
		<form method="post" action="UserChange">
		<table border="1">
			<tr>
			<th>ID</th>
			<th>PASSWORD</th>
			<th>NAME</th>
			<th>ADDRESS</th>
			<th>MOBILE</th>
			<th>EMAIL</th>
			<th>GRADE</th>
			</tr>			
		<%
		if(rs.next()){
			id = rs.getString("id");
			password = rs.getString("password");
			name = rs.getString("name");
			address = rs.getString("address");
			mobile = rs.getString("mobile");
			email = rs.getString("email");
			grade = rs.getString("grade");
			String gradeKor = "";
			if(grade.equals("1"))
				gradeKor = "일반회원";
			else
				gradeKor = "단골회원";
			%>
			<tr>
			<td><input type="text" disabled="disabled" value="<%=id %>"></td>
			<td><input type="text" name="password" value="<%=password %>"></td>
			<td><input type="text" name="name" value="<%=name %>"></td>
			<td><input type="text" name="address" value="<%=address %>"></td>
			<td><input type="text" name="mobile" value="<%=mobile %>"></td>
			<td><input type="text" name="email" value="<%=email %>"></td>
			<td><input type="text" disabled="disabled" value="<%=gradeKor %>"></td>
			</tr>
			<%
		}
		%>
			</table>
		<br/>
			<input type="hidden" name="id" value="<%=id %>">
			<input type="hidden" name="grade" value="<%=grade %>">
			<input type="submit" value="정보변경">
			<a href="./UserDel?id=<%=id %>"><input type="button" value="회원탈퇴"></a>
			</form><%
		
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