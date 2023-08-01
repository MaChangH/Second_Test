package com.ma.mini2.Member;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class MemberDAO {
	@Autowired
	private SqlSession ss;
	
	// memberIdCheck 가 왜필요하지 ? 
	public Members memberIdCheck(Member m) {
		return new Members(ss.getMapper(MemberMapper.class).getMemberById(m));
	}
	public void divideAddr(HttpServletRequest req) {
		Member m = (Member) req.getSession().getAttribute("loginMember");
		String addr = m.getC_addr();
		String[] addr2 = addr.split("!");
		req.setAttribute("addr", addr2);
	}
	
	
	public void signup(Member m , HttpServletRequest req) {
		try {
			// 진짜주소 가지고오기
			String path = req.getSession().getServletContext().getRealPath("resources/img");
			
			// 사진.
			MultipartRequest mr = new MultipartRequest(req, path, 10485760, "utf-8", new DefaultFileRenamePolicy());
			// signup jsp 에 있는 파라미터들 가지고 오기. + Member m 에 집어넣기 
			m.setC_id(mr.getParameter("c_id"));
			m.setC_pw(mr.getParameter("c_pw"));
			m.setC_name(mr.getParameter("c_name"));
			m.setC_role(mr.getParameter("c_role"));
			
			// 주소값은 ! 로 나눠서 붙이기 -> 
			String c_addr1 = mr.getParameter("c_addr1");
			String c_addr2 = mr.getParameter("c_addr2");
			String c_addr3 = mr.getParameter("c_addr3");
			String c_addr = c_addr2 + "!" + c_addr3 + "!" + c_addr1;
			m.setC_addr(c_addr);
			 
			System.out.println(c_addr); //부산 연제구 법원북로 34!151151151!47508 ! 로 나눠져서 나옴. 그거만 나중에 짤라서 넣어주면 됨.
			// 원래 사진 이름 을 한글로 바꿀때 + 없애고 utf-8로 인코딩
			String c_photo = mr.getFilesystemName("c_photo");
			String c_photo_kor =  URLEncoder.encode(c_photo, "utf-8").replace("+", " ");
			m.setC_photo(c_photo_kor);
			
			
			// 사진은 사진이름만 그대로 들어가는데 . 이걸가지고 내가 jsp에서 사진을 가지고올려면 어떻게 해햐하지?
			System.out.println(m.getC_photo());
			
			if (ss.getMapper(MemberMapper.class).regMember(m)==1) {
				req.setAttribute("r", "가입성공");
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "가입실패");
		}
		
	}

	public void login(Member inputM , HttpServletRequest req) {
		
		try {
			/*
			 * interface 에서 memberMapper.xml 가지고 옴.
			 * MemberMapper.java interface를 가지고 옴.
			 */
			
			// List부분이 안되고 밑에있는 catch 로 넘어간다.
			List<Member> dbms = ss.getMapper(MemberMapper.class).getMemberById(inputM);
			if (dbms.size() !=0) {
				// dbms.size 0이 아니다 ?  아이디가 db에 있다 ( 회원가입 되어있는 아이디다) -> 내가 입력한 id랑 비번이랑 일치한다! -> 로그인했다.
				Member dbM = dbms.get(0);
				// dbms 에 리스트 중에 0번째로 있는게 id 임. 
				if (dbM.getC_pw().equals(inputM.getC_pw())) {
					// db에 있는 pw 랑 입력한 pw 랑 동일하다면 ?
					
					req.getSession().setAttribute("loginMember", dbM);
					// db에 있는 id 에게 loginMember session 부여 ? 라고 생각하면 되나?
					// session 에 loginMember 라는 이름을 설정한다 ? 
					req.getSession().setMaxInactiveInterval(100 * 60);
					// session 지속 시간 설정 
					req.setAttribute("r", "로그인성공");
					System.out.println(dbM.getC_photo());
					// 아마도 주소값으로 들어갈거같은데
					
					// 사진이 어떻게 들어가는지 확인하고 싶다.
//					 회원가입할 때 사진을 어떻게 저장했지 ? 어느 경로에 넣었더라.?
//					System.out.println();
					
				} else {
					req.setAttribute("r", "로그인실패(pw오류)");
				} 
			}
			// 큰 if 밖 dbms.size() !=0 에서 걸림 . db에 id 없다는뜻
			else {
				req.setAttribute("r", "로그인실패(미가입 ID )");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "로그인실패(db서버문제)");
		}
		
	}
	
	
	public void logout(HttpServletRequest req) {
		req.getSession().setAttribute("loginMember", null);
	}
	public boolean loginCheck(HttpServletRequest req) {

		Member m =  (Member) req.getSession().getAttribute("loginMember");
		if (m != null) {
			req.setAttribute("loginPage", "member/loginSuccess.jsp");
			return true;
		}else {
			req.setAttribute("loginPage", "member/loginForMenu.jsp");
			return false;
		}
	}
	
}
