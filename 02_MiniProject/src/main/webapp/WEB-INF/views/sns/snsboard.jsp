<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  1.여기는 쓴 글 볼수있는 곳.
			1.1 db에 넣고  ㅇㅇ
			1.2 db에있는거 가지고 와서 보이게
					db에 있는 내용을 jsp 에 보이게 할려면
					-- 이건 아마 Session 에 넣어서 해결한거같은데.
					
					$/{11} 안에 각각  따로 넣어서 내가 원하는거 보이게.
					문제는 sns.jsp 를 보면서 알아야하는데 
					$/  {  r} 은 setAttirbute 하는게 보이는데 
					$/{  sm.c_color} 같은거는 뭐지? 
					어디서 setAttribute를 했는지 모르겠네.
					sns.jsp // SNSDAO 랑 보면 
					allPageCount 가 나오고 / getMsg 안에 allPageCount 
					둘 다 나오는데 이걸 어떻게 알지 ? 
					sns.jsp 에서는 SNSDAO.java 에 있는 allPageCount 를 어떻게 알아서 가지고온거지?
					
					
			1.3 
	2. 글쓰기 누르면 글 쓸수있는 페이지 나오게 
		 -->
		 
	<table>
		<tr>
			<td>ㅎㅇㅎㅇ</td>
		</tr>
	</table>
	<!--  session에서 loginMember  값이 있는경우 보이게 하기  
		MemberDAO / login 메소드 안에 로그인 했을 때 loginMember를 session 값으로 줌.
	-->
	
	<c:if test="${sessionScope.loginMember != null }">
		<table id="snsWriteArea">
			<tr>
				<td>
				<!--  form 안에 action/ name / onsubmit / 이 각각 어디로 들어가는지 뭐때문에 쓴건지 
					action => controller 
					onsubmint => js 
					name => 아직 모르겠음 이거어디에 쓰지?
				 -->
					<form action="sns.search" name="snsSearchForm"
						onsubmit="return snsSearchCheck();" method="post">
						<table id="snsSearchTable">
							<tr>
								<td id="sstTd1"><input name="search" maxlength="10"
									autocomplete="off" placeholder="글찾기!"></td>
								<td id="sstTd2"><input type="image"
									src="resources/img/search.png" style="width: 30px;"></td>
							</tr>
						</table>
					</form>
				</td>
					<td id="snsWriteAreaSummoner" align="center" rowspan="2"
					style="background-color: #F44336; border-radius: 0px 20px 20px 0px; cursor: pointer;">
					<img src="resources/img/menu.png"></td>
			</tr>
			<tr>
				<td align="center">
					<form action="sns.write" name="snsWriteForm"
						onsubmit="return snsWriteCheck();" method="post">
						<input name="token" value="${token }" type="hidden">
						<table id="snsWriteTable">
							<tr>
								<td id="swtTd1"><textarea name="c_txt" placeholder="글적기!"
										maxlength="250"></textarea></td>
								<td id="swtTd2"><input type="image"
									src="resources/img/write.png" style="width: 30px;"></td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</c:if>
</body>
</html>