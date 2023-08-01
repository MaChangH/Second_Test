<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="loginTbl">
	<form action="member.login" method="POST">
			<tr>
				<td><input name="c_id" placeholder="ID" class="i1" maxlength="10" autocomplete="off"></td>
				<td><input name="c_pw" type="password" placeholder="PW" class="i1" maxlength="10"></td>
			</tr>
			<tr>
				<td><button>로그인</button></td>
	</form>
			</tr>
		</table>
</body>
</html>