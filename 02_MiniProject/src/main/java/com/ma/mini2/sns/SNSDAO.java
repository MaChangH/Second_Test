package	com.ma.mini2.sns;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ma.mini2.SiteOption;
import com.ma.mini2.Member.Member;

@Service
public class SNSDAO {
	private int allMsgCount;
	private String [] colors;
	
	public SNSDAO() {
		colors = new String [] {"#F45536", "#43A027", "#FF2100", "#794248", "#E97E62", "#009238"};
	}
	@Autowired
	private SqlSession ss;
	
//	@Autowired(required=false)
//	private SiteOption so;
	/// so를 못알아먹던데..
	
	// 전체 글 갯수 가지고오기
	public void countAllMsg() {
		allMsgCount = ss.getMapper(SNSMapper.class).getAllMsgCount();
	}
	
	// SNSMsg 에다가 값을 넣을거다 , 거기에 맞는 파라미터를 넣은거.
	
	// 글쓰기
	public void writeMsg(SNSMsg sm,HttpServletRequest req) {
		try {
			String token = req.getParameter("token");
				// Controller 에 추가해서 토큰은 가지고왔고
			
			req.getSession().setMaxInactiveInterval(3000);
			// session 에 st 라는 값 부여 후 String st2 라고함 /   st2 값이 null 이라고 나와서 밑에 if 에 걸림
			// st2 랑 token이 같거나 , st2가 null 이면 => 새로고침시 글작성이 또 된다는건데.
			
			// st2 지우고 다시 해봐야겠다.
			String st2 = (String) req.getSession().getAttribute("st");
				System.out.println(token + " 그리고 "+ st2);
			if (st2 != null && token.equals(st2)) {
				req.setAttribute("r", "글쓰기실패(새로고침)");
				return;
			}
			
			Member m  = (Member) req.getSession().getAttribute("loginMember");
			System.out.println(m);
			// 여기 m 은 DB  sm 은 글내용
			sm.setC_id(m.getC_id());
			sm.setC_color(colors[new Random().nextInt(colors.length)]);
			String txt  = sm.getC_txt();
			txt = txt.replace("\r\n", "<br>");
			sm.setC_txt(txt);
			
			if (ss.getMapper(SNSMapper.class).writeMsg(sm)==1) {
				req.setAttribute("r", "글쓰기 성공");
				req.getSession().setAttribute("st", token);
				allMsgCount++;
			}else {
				req.setAttribute("r", "글쓰기실패");
			}
		} catch (Exception e) {
			req.setAttribute("r", "글쓰기실패  내요없음");
			e.printStackTrace();
		}
		
	}
	
	
	// 글 수정, 삭제/ 댓글 쓰기, 수정 ,삭제  / 검색
	
	
}

	

	
