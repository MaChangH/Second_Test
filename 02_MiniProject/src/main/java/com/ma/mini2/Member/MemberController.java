package com.ma.mini2.Member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
// 내꺼
@Controller
public class MemberController {

		@Autowired
		private MemberDAO mDAO;
	
	@RequestMapping(value = "/member.singup.go", method = RequestMethod.GET)
	public String signupgo(HttpServletRequest req) {
		mDAO.loginCheck(req);
		req.setAttribute("contentPage","home.jsp" );
		return "member/signup";
	}
	@RequestMapping(value = "/member.login.go", method = RequestMethod.GET)
	public String logingo(HttpServletRequest req) {
		mDAO.loginCheck(req);
		req.setAttribute("contentPage","home.jsp" );
		return "member/login";
	}
	@RequestMapping(value = "/member.signup" , method = RequestMethod.POST)
	public String signup(Member m , HttpServletRequest req) {
		req.setAttribute("contentPage","home.jsp" );
		mDAO.loginCheck(req);
		mDAO.signup(m, req);
		return "index";
	}
	@RequestMapping(value = "/member.login" , method = RequestMethod.POST)
	public String login(Member m , HttpServletRequest req) {
		mDAO.login(m, req);
		mDAO.loginCheck(req);
		req.setAttribute("contentPage","home.jsp" );
		return "index";
	}
	
	@RequestMapping(value = "/member.info.go" , method = RequestMethod.GET)
	public String memberInfoGo(Member m , HttpServletRequest req) {
		if (mDAO.loginCheck(req)) {
			/// 주소 나누기
			mDAO.divideAddr(req);
			req.setAttribute("contentPage", "member/info.jsp");
		}
		else {
			req.setAttribute("contentPage", "home.jsp");
		}
		return "index";
	}
	
	// 로그인이 되어있는 상태면 ? -> 로그인 버튼 대신에 회원정보 버튼 나오게 만들어야지 -> 그거 누르면 info 나오고 거기서 update delete 할수있게
	@RequestMapping(value = "/member.logout" , method = RequestMethod.GET)
	public String logout(Member m , HttpServletRequest req) {
		mDAO.logout(req);
		mDAO.loginCheck(req);
		req.setAttribute("contentPage","home.jsp" );
		return "index";
	}
	
}

