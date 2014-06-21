package visang.timple.bbs;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import visang.timple.dao.impl.BbsInterface;

@Controller("BbsController")
public class BbsController {
	// 모든 브라우저 요청 받아서 DAO 처리하는 클래스
	
	// DAO 만들기
	@Resource(name="BbsDAO") // 서비스 이름 가져오기
	private BbsInterface dao;
	
	// 게시판 리스트 불러오기
	@RequestMapping(method={RequestMethod.GET}, value="/bbs/BbsList.vs")
	public String list(HttpServletRequest req) {
		
		// 1. DAO 위임 -> 목록 select
		// 2. 뷰 호출 -> requets
		
		// iBatis 에서는 Object로 받아야한다!
		ArrayList<Object> list = dao.list();
		
		req.setAttribute("list", list);

		return "/bbs/BbsList.jsp";
	}
}
