package visang.timple.main;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import visang.timple.dao.impl.SampleDaoImpl;

@Controller("indexController")
public class IndexController {
	
	@Resource(name="sampleService")
	private SampleDaoImpl dao;
	
	@RequestMapping(value="/index.vs", method=RequestMethod.GET)
	public String index() {
		return "/index.jsp";
	}
	
	@RequestMapping(value="/sample.vs", method=RequestMethod.GET)
	public String sample(HttpServletRequest req) {
		
		String name = dao.getName("aaa001@gmail.com");
		
		req.setAttribute("name", name);
		
		return "/sample.jsp"; 
	}
}