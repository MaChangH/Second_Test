package com.ma.mini2.sns;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ma.mini2.TokenMaker;
import com.ma.mini2.Member.MemberDAO;

@Controller
public class SNSController {
	
	@Autowired
	private MemberDAO mDAO;
		 
	@Autowired
	private SNSDAO sDAO;
	
	private boolean isFirstReq;
	
	public SNSController() {
		isFirstReq = true;
	}

	@RequestMapping(value = "/sns.go", method = RequestMethod.GET)
	public String snsgo(HttpServletRequest req) {
		if (isFirstReq) {
			sDAO.countAllMsg();
			isFirstReq = false;
		}
		mDAO.loginCheck(req);
		TokenMaker.makeToken(req);
		// 원래는 sns/sns.jsp -> snsboard로 변경
		req.setAttribute("contentPage","sns/snsboard.jsp" );
		return "index";
	}
	@RequestMapping(value = "/sns.write", method = RequestMethod.POST)
	public String snsWrite(SNSMsg sm , HttpServletRequest req) {
		if (mDAO.loginCheck(req)) {
			sDAO.writeMsg(sm, req);
		}
		TokenMaker.makeToken(req);
		req.setAttribute("contentPage","sns/snsboard.jsp" );
		return "index";
	}


}
