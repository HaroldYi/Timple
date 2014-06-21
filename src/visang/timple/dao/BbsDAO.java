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
	
	@Override
	public List<BbsDTO> list1() {
		List<BbsDTO> list1 = new ArrayList<BbsDTO>();
		list1 = sqlSession.selectList("Bbs.getList1");
		return list1;
	}
	
	@Override
	public List<BbsDTO> list2() {
		List<BbsDTO> list2 = new ArrayList<BbsDTO>();
		list2 = sqlSession.selectList("Bbs.getList2");
		return list2;
	}
	
	@Override
	public List<BbsDTO> list3() {
		
		List<BbsDTO> list3 = new ArrayList<BbsDTO>();
		list3 = sqlSession.selectList("Bbs.getList3");
		return list3;
	}


}
