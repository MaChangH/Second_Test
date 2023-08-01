<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>machang</title>
</head>
<body>
<!--  
-->
<c:if test="${curPage != 1 }">
		<table id="snsL">
			<tr>
				<td align="center" onclick="snsPageChange(${curPage - 1 });">&lt;</td>
			</tr>
		</table>
	</c:if>

	<c:if test="${curPage != allPageCount }">
		<table id="snsR">
			<tr>
				<td align="center" onclick="snsPageChange(${curPage + 1 });">&gt;</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${sessionScope.loginMember != null }">
		<table id="snsWriteArea">
			<tr>
				<td>
					<form action="sns.search" name="snsSearchForm"
						onsubmit="return snsSearchCheck();" method="post">
						<table id="snsSearchTable">
							<tr>
								<td id="sstTd1"><input name="search" maxlength="10"
									autocomplete="off" placeholder="찾기"></td>
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
								<td id="swtTd1"><textarea name="c_txt" placeholder="뭐"
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