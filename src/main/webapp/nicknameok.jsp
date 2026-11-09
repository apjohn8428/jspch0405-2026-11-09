<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
	%>
	
	<h3>입력하신 닉네임은 <%= nickname %> 입니다</h3>
	<h3>입력하신 비밀번호는 <%= password %> 입니다</h3>
</body>
</html>