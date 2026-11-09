<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>닉네임과 비밀번호 입력</title>
</head>
<body>
	<script type="text/javascript">
		function nickcheck() {
			var f = document.nicknameForm;
			
			//닉네임은 영문 대문자만 가능하도록 유효성 체크
			for(i=0; i<f.nickname.value.length; i++) {
				if(!(f.nickname.value.charAt(i)>="A" && f.nickname.value.charAt(i)<="Z")) {
					alert("닉네임은 영문 대문자만 입력 가능합니다");
					f.nickname.focus();
					
					return false;
				}
			}
			
			//비밀번호는 숫자만 가능하도록 유효성 체크
			if(isNan(f.password.value)) {
				alert("비밀번호는 숫자만 입력 가능합니다");
				f.password.focus();
				
				return false;
			}
		}
	</script>
	
	<h1>닉네임과 비밀번호 입력</h1>
	
	<form action="nicknameok.jsp" name="nicknameForm">
		닉네임: <input type="text" name="nickname"> <br>
		비밀번호: <input type="password" name="password"> <br>
		
		<input type="submit" value="신청하기">
	</form>
</body>
</html>