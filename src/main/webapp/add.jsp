<%@page import="com.cafe24.guestbook.dao.GuestBookDAO"%>
<%@page import="com.cafe24.guestbook.vo.GuestBookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 추가</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		//데이터를 받을 때는 기본적으로 문자열 기준
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String contents = request.getParameter("message");
		
		//vo 객체 생성 후, DB insert를 위해 dao 객체 호출 및 메소드 실행
		GuestBookVO vo = new GuestBookVO();
		vo.setName(name);
		vo.setPassword(password);
		vo.setContents(contents);
		
		new GuestBookDAO().insert(vo);
	%>
	
	<%=name %>
	<%=password %>
	<%=contents %>
	
	<%
		response.sendRedirect("test.jsp");
	%>

</body>
</html>