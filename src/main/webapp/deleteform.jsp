<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="delete.jsp">
	<!-- 사용자에게 노출될 필요가 없는 정보 hidden 처리 -->
	<input type='text' name="no" value="<%=request.getParameter("no")%>">
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="삭제"></td>
		</tr>
	</table>
	</form>
</body>
</html>