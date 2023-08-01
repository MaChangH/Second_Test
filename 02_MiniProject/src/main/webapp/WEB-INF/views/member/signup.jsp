<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>machang</title>
<link rel = "stylesheet" href ="resources/css/signup.css">
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/mag_jQuery.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<!-- 
	  1. form 으로 감싸기   완
	  2. css 넣기 ( 색깔 , 센터맞추기) 완  
	  3. gogo 에 주소 javascript 넣기 
	  4. onsubmit 에 적어놨어도 javascript 에 아무것도 없으면 실행이 안되나?  
	   action 부분만 있으면 되는거 아닌가 ?
	  5. input 색깔 흰색이라서 안보임.
	   
-->
<br><br><br><br>
	<h1 class = "i1" style="color : white;"> 회 원 가 입</h1>
<form action="member.signup" method="post" enctype="multipart/form-data" name="joinForm" onsubmit = "return joinCheck();">
	<!-- form 안에 onsubmit 없앴다 .  -->
	<table id ="signupTbl" >
		<tr> <!--  js 에서 받아쓰는건 name 
				css / jQuery는 id
		 -->
				<td align="center" colspan="2"><input id="join_c_id" name="c_id" placeholder="ID" class="i1" autocomplete="off" autofocus="autofocus" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="password" name="c_pw" placeholder="PW(숫자만 하나 이상)" class="i1" autocomplete="off" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="password" name="c_pwChk" placeholder="PW확인" class="i1" autocomplete="off" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input name="c_name" placeholder="이름" class="i1" autocomplete="off" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				<input id="join_c_addr1" name="c_addr1" placeholder="우편번호" class="i1" autocomplete="off"><br>
				<input id="join_c_addr2" name="c_addr2" placeholder="주소" class="i1" autocomplete="off"><br>
				<input name="c_addr3" maxlength="50" placeholder="상세주소" class="i1" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td align="center" style="color: white; width:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;프사</td>
				<td align="center"><input name="c_photo" type="file" style="font-family: 'contentFont';font-size: 13pt;font-weight:900;"></td>
			</tr>
			<tr>
				<td align="center" style=" color: white; width:100px; font-family: 'contentFont';" style="color : white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;권한</td>
				<td align="center"><input name="c_role" type="radio" value="s" checked="checked" style="color : white;">학생&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input name="c_role" type="radio" value="m" style="color : white;" >관리자</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button>가입</button></td>
			</tr>
	</table>
</form>
</body>
</html>