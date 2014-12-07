<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="Util.*"%>
<%
	if (session.getAttribute("id") == null)
		response.sendRedirect("./board.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome To 청춘극장</title>
</head>
<body>
	<jsp:include page="loginWidget.jsp" />
	<br>
	<form method="post" action="BoardUpload">
		<label>제목: </label><input type="text" name="title"><br> <label>내용:
		</label>
		<textarea name="contents"></textarea>
		<br> <input type="hidden" name="author"
			value="<%=session.getAttribute("name")%>"> <input
			type="submit" value="업로드">
	</form>
</body>
</html>