package visang.timple.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import visang.timple.dao.impl.BbsImpl;
import visang.timple.model.BbsDTO;

@Service("BbsDAO")
public class BbsDAO implements BbsImpl {
	// DAO는 인터페이스를 상속받아야 한다.
	
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSessionTemplate(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// 예제 Memo에 있던 DAO 구현 내용..
	@Override
	public List<BbsDTO> list() {
		
		List<BbsDTO> list = new ArrayList<BbsDTO>();
		list = sqlSession.selectList("Bbs.getList");
		return list;
	}

}
