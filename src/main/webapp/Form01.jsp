<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<h1>회원 로그인</h1>
	<hr>
	
	<script type="text/javascript">
		function checklogin() {
			
			var f = document.loginform;
			
			if(f.memberid.value == "") {
				alert("아이디를 입력하세요");
				f.memberid.select(); //아이디 입력란으로 커서 이동
				
				return false; //로그인 과정 중지
			}
			
			if(f.memberid.value.length < 4 || f.memberid.value.length > 12) {
				alert("아이디를 4~12자 사이로 입력하세요");
				f.memberid.select(); //아이디 입력란으로 커서 이동
				
				return false; //로그인 과정 중지
			}
			
			if(f.memberpassword.value == "") {
				alert("비밀번호를 입력하세요");
				f.memberpassword.select(); //비밀번호 입력란으로 커서 이동
				
				return false; //로그인 과정 중지
			}
			
			if(f.memberpassword.value.length < 4 || f.memberpassword.value.length > 12) {
				alert("비밀번호를 4~12자 사이로 입력하세요");
				f.memberpassword.select(); //비밀번호 입력란으로 커서 이동
				
				return false; //로그인 과정 중지
			}
		}
	</script>
	
	<form action="loginok.jsp" name="loginform" onsubmit="return checklogin()">
		아이디: <input type="text" name="memberid"> <br><br>
		비밀번호: <input type="password" name="memberpassword"> <br><br>
		회원등급: <input type="checkbox" name="memberrank" value="NORMAL"> NORMAL
			   <input type="checkbox" name="memberrank" value="VIP"> VIP
			   <input type="checkbox" name="memberrank" value="VVIP"> VVIP
		<input type="submit" value="로그인">
	</form>
</body>
</html>