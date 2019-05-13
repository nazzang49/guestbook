<%@page import="com.cafe24.guestbook.vo.GuestBookVO"%>
<%@page import="com.cafe24.guestbook.dao.GuestBookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 삭제</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
String no = request.getParameter("no");
String password = request.getParameter("password");

GuestBookVO vo = new GuestBookVO();
long num = Long.parseLong(no);
vo.setNo(num);
vo.setPassword(password);

boolean flag = new GuestBookDAO().delete(vo);
if(flag){
	%>
	<script>
		alert("삭제완료");
	</script>
	<%
	response.sendRedirect("test.jsp");
}
%>

</body>
</html>