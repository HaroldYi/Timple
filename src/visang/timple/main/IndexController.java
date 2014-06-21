package visang.timple.main;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import visang.timple.dao.impl.MemberDaoImpl;

@Controller("indexController")
public class IndexController {
	
	@Resource(name="memberService")
	private MemberDaoImpl dao;
	
	@RequestMapping(value="/index.vs", method=RequestMethod.GET)
	public String index(HttpServletRequest req) {
		
		List<String> oneCategoryList = dao.getOneCategory();
		req.setAttribute("oneCategoryList", oneCategoryList);
		return "/index.jsp";
	}
	
	@RequestMapping(value="/ajax_twocategory.vs", method=RequestMethod.GET)
	public String ajaxTwoCategory(HttpServletRequest req, String oneCategorySeq) {
		
		List<String> twoCategoryList = dao.getTwoCategory(Integer.parseInt(oneCategorySeq));
		req.setAttribute("twoCategoryList", twoCategoryList);
		return "/member/twocategory.jsp"; 
	}
}
