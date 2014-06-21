package visang.timple.bbs;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import visang.timple.dao.impl.BbsImpl;
import visang.timple.model.BbsDTO;

@Controller("BbsController")
public class BbsController {
	// 모든 브라우저 요청 받아서 DAO 처리하는 클래스
	
	// DAO 만들기
	@Resource(name="BbsDAO") // 서비스 이름 가져오기
	private BbsImpl dao;
	
	// 게시판 리스트 불러오기s
	@RequestMapping(value="/bbs/BbsList.vs", method={RequestMethod.GET})
	public String list(HttpServletRequest req) {
		
		// 1. DAO 위임 -> 목록 select
		// 2. 뷰 호출 -> requets
		
		// iBatis 에서는 Object로 받아야한다!
		List<BbsDTO> list = dao.list();
		
		System.out.println("list 반환");
		req.setAttribute("list", list);

		return "/bbs/BbsList.jsp";
	}
}
