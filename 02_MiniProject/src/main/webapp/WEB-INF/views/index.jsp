<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href ="resources/css/index.css">
<link rel = "stylesheet" href ="resources/css/info.css">
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/mag_jQuery.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>machang</title>
</head>
<body>
	
	<table id ="menuTbl">
		<tr>
			<td class ="menuTd" style= "width: 160px;">
			<td class ="menuTd" align = "center"> <a href="index.go">home</a>	</td>
			<td class ="menuTd" align = "center"> <a href="sns.go">SNS</a>	</td>
			<td class ="menuTd" align = "center"> <a href="#">main</a>	</td>
			<td>
				<table class ="regTd">
					<tr>
						<td align = "center"  id = "regBtn1">	
							<jsp:include page="${loginPage}"></jsp:include>
							<!--  $ 1{1 loginPage } 이거를  처음에는 로그인 나오게 만들고 로그인하고 나면 회원정보 나오게 controller 에서 바꿔야겠다. -->
						</td> 
						<td align = "right" id = "regBtn"> <a href = "member.singup.go">회원가입</a> </td>
					</tr>
				</table>
				
			</td>
		</tr>
	</table>
	<br><br><br><br><br><br>
	
	<table style="margin: auto; padding: auto;">
		<tr>
			<td align = "center">
				<jsp:include page="${contentPage}"></jsp:include>	
			</td>
		</tr>
	</table>
	<br>
	<div align = "center"> ${r } </div>
	
	<br><br><br><br><br>
	<h1 id = "contentFont"> content hello world 안녕하세요 12345</h1>
	<h1 id = "indexFont"> index hello world 안녕하세요 12345</h1>
</body>
</html>