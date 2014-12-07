<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	if (session.getAttribute("id") == null) {
%>
<form action='Login' method='post'>
	<label>ID: </label> <input type='text' name='id'> <label>PASSWORD:
	</label> <input type='password' name='password' /> <input type='submit'
		value='로그인' /> <a href="./join.jsp"><input type='button'
		value='회원가입' /></a>
</form>
<%
	} else {
		String name = session.getAttribute("name").toString();

		if (session.getAttribute("id").equals("admin")) {
%>
<%=name%>님 반갑습니다!
<a href="./admin.jsp"><input type="button" value="관리자페이지"></a>
<a href="Logout"><input type="button" value="로그아웃"></a>
<%
	} else {
%>
<%=name%>님 반갑습니다!
<a href="./mypage.jsp"><input type="button" value="마이페이지"></a>
<a href="./Logout"><input type="button" value="로그아웃"></a>
<%
	}
	}
%>
