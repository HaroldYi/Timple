package visang.timple.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import visang.timple.dao.impl.MemberDaoImpl;

@Service("memberService")
public class MemberDao implements MemberDaoImpl {

	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSessionTemplate(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<String> getOneCategory() {
		List<String> list = new ArrayList<String>();
		list = sqlSession.selectList("member.getOneCategory");
		return list;
	}

	@Override
	public List<String> getTwoCategory(int oneCategorySeq) {
		List<String> list = new ArrayList<String>();
		list = sqlSession.selectList("member.getTwoCategory", oneCategorySeq);
		return list;
	}

}
