<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>machang</title>
<script type="text/javascript" src = "resources/js/gogo.js" ></script>
<style type="text/css">
	.loginMemberID{
		color : red;
		margin-top: 300px;
		padding-top: 300px;
	}
	#loginMemberImg{
		height: 30px;
		weight: 30px;
	}
</style>
</head>
<body>
	<table id = "loginTbl">
		<tr>
		<!--  src = "resources/img/... 이거를 파일을 바꿀려면 어떻게 해야하는지 . . . 
			이게 resources/ 위치가 필요한가? sessionScope 해서 사진 띄워라고 하면 띄워주는데 이걸 바꾸는건 원래 
			절대경로? 원래 경로에서 가지고 오고 변경을 해야하는거니까.
		 -->
			<td><img id="loginMemberImg"
				src="resources/img/${sessionScope.loginMember.c_photo }" ></td>
			<td id="loginMemberID" valign="top">${sessionScope.loginMember.c_id }(${sessionScope.loginMember.c_name })</td>
			<td align="right"><button
					onclick="memberInfoGo();" class="loginMemberBtn">회원정보</button>
				<button onclick="logout();" class="loginMemberBtn">로그아웃</button></td>
		</tr>
	</table>
</body>
</html>