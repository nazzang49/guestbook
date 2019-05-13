<%@page import="com.cafe24.guestbook.vo.GuestBookVO"%>
<%@page import="java.util.List"%>
<%@page import="com.cafe24.guestbook.dao.GuestBookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<%
GuestBookDAO dao = new GuestBookDAO();
List<GuestBookVO> list = dao.getListBook();
%>
<body>
	<!-- 보안상 중요한 데이터의 경우, post 방식이 적합 -->
	<form action="add.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name" placeholder="이름 입력"></td>
			<td>비밀번호</td><td><input type="password" name="password" placeholder="비밀번호 입력"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	<%
	int count = list.size();
	int idx = 0;
	for(GuestBookVO vo : list){
	%>
	<br>
	<table width=510 border=1>
		<tr>
			<td>[<%=count-idx++ %>]</td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getReg_date()%></td>
			<!-- get 방식 파라미터 전송 -->
			<td><a href="/guestbook/deleteform.jsp?no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<!-- 개행처리 -->
			<td colspan=4><%=vo.getContents().replaceAll("\n", "<br>")%></td>
		</tr>
	</table>
	<%} %>
</body>
</html>