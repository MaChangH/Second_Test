<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member INFO Page</title>
</head>
<body>

			<!--  colspan 써서 아까전에 위치 이상하게 나오던거 고친거구나. -->
	<table>
		<tr>
			<td align = "center" id = "contentFont"colspan="2">
				<div class = tagName>아이디 </div>  <input value = "${sessionScope.loginMember.c_id }" name = "c_id" class = "i1" 
				placeholder = "ID"  autocomplete ="off" maxlength = "10">
			</td>
		</tr>
		<tr>
			<td align = "center" id = "contentFont" colspan="2"><br>
				<div class = tagName>비밀번호 </div> <input value = "${sessionScope.loginMember.c_pw }" name = "c_pw" class = "i1" 
				placeholder = "PW"   autocomplete ="off" type = "password" maxlength = "10">
			</td>
		</tr>
		<tr>
			<td align = "center" id = "contentFont" colspan="2" ><br>
				<div class = tagName>비밀번호 확인 </div>  <input value = "${sessionScope.loginMember.c_pw }" name = "c_pwChk" class = "i1" 
				placeholder = "PW확인" autocomplete ="off" type = "password" maxlength = "10">
			</td>
		</tr>
		<tr>
		
			<td align = "center" id = "contentFont" colspan="2" ><br>
				<div class = tagName>이름 </div>  <input value = "${sessionScope.loginMember.c_name }" name = "c_name" class = "i1" 
				placeholder = "이름" autocomplete ="off" maxlength = "10">
			</td>
		</tr>
		<!--  주소 변경 . 사진변경, 권한변경  -->
		<tr>
			<td align ="center" colspan = "2">
			<br>
			<div class = "tagName">주소</div>
				<input id = "join_c_addr1" value = ${addr[2] } readonly="readonly" name = "c_addr1"
				placeholder="우편번호" class = "i1" autocomplete="off"> <br> <!--  table 안에 br 안들어가는줄 알았는데 !! -->
				<input id = "join_c_addr2" value = ${addr[0]  } readonly="readonly" name = "c_addr2"
				placeholder="주소" class = "i1" autocomplete="off" ><br>
				<input name = "c_addr3" value = ${addr[1] } class = "i1" maxlength="40" placeholder = "상세주소"
				autocomplete = "off">
			</td>
		</tr>
		<!--  사진 -->
		<tr>
			<td align = "center" style = "width: 100px;"> 사진  </td>
			<td> <br>
				<img  src="resources/img/${sessionScope.loginMember.c_photo }" style = "height : 130px; wieght : 150px;"> 
				<!-- 사진이 들어가는게 아니고 사진 이름이 들어가네?  아ㅏㄴ나 그냥 잘못적어서 안나오는거였네 ㄷㄷ 복붙하니까 되네
					이거 여기서 사진을 바꿀려면 
					그른데 생각을 해보니 이게 어떻게 나오는거지 ? 내가 안에 사진파일을 넣지도 않았는데 왜 사진이 나오는걸까?
				.-->
				<input name = "c_photo" type = "file">
				
			</td>
		</tr>
		
		<!--  수정, 탈퇴 버튼 -->
		
	</table>
</body>
</html>