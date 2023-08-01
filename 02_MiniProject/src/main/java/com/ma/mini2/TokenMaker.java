package com.ma.mini2;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
// 새로고침 : 방금 한 요청 그대로 다시 하기
// 요청할 때 마다 토큰값을 비교해서 중복되면 insert안하기

// 글쓰기를 할 때마다 달라질만한값을 토큰
public class TokenMaker {
	public static void makeToken(HttpServletRequest req) {
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("hhmmss");
		String token = sdf.format(d);
		req.setAttribute("token", token);
		// "token" 에다가 지금 시간을 넣어서 보냄. 
		// 이게 다르면 ( 새로고침 시간 =/ 작성시간) 글 추가가 안되게 하기 위함.
		// 똑같은 작업을 새로고침에서 요청하지 않게
	}
}








