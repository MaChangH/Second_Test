<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>machang</title>

<link rel = "stylesheet" href = "resources/css/login.css">
<link rel = "stylesheet" href = "resources/css/loginForMenu.css"> 
</head>
<body>
	<!-- 
			되는거 아닌가요?  위에있는게 선생님 코드입니다 지금 여기가 제 코드라구요? 네 제거 안돼서 선생닌ㅁ꺼 가지고온거입니다 밑에 있는게 제가한거구요
			input에 name 안붙이셔서 난 에러였어요 ㅎㅎ 
			그리구 form 은 지금처럼 중간에서 자를땐
			table 아래에다 둬야 합니당!
	-->
		<table id = "loginTbl" border= "1">
	<form action="member.login" method="POST" >
			<tr>
				<td colspan = "2" id ="loginTitle"> 로그인 </td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input name="c_id" placeholder="아이디" maxlength="10" autocomplete="off"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input name="c_pw" placeholder="비밀번호" type="password" maxlength="10"></td>
			</tr>
			<tr>
				<td align ="center"><button>로그인</button></td>
	</form>
				<td align ="center"><button onclick = "goJoin();">회원가입</button></td>
			</tr>
		</table>
	
		 
</body>
</html>