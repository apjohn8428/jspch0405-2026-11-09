<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
	
		//request 객체 안 자료를 출력 전 utf-8로 세팅하도록 설정
		request.setCharacterEncoding("utf-8");
		
		String mid = request.getParameter("memberid");
		System.out.println(mid);
		
		String mpw = request.getParameter("memberpassword");
		System.out.println(mpw);
		
		String[] mrank = request.getParameterValues("memberrank");
	%>
	
	<h3><%= mid %>님 로그인 성공 </h3>
	
	<h3>
	<%
		for(int i=0; i<mrank.length; i++) {
	%>
		당신의 등급은 <%= i+1 %> : <%= mrank[i] %>
	<%
		}
	%>
	</h3>
</body>
</html>