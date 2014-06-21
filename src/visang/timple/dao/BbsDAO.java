package visang.timple.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import visang.timple.dao.impl.BbsInterface;

@Service("BbsDAO")
public class BbsDAO implements BbsInterface {
	// DAO는 인터페이스를 상속받아야 한다.
	
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSessionTemplate(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public String list(String email) {
		return (String) sqlSession.selectOne("sample.getName", email);
	}
	
	// 예제 Memo에 있던 DAO 구현 내용..
	@Override
	public ArrayList<Object> list() {
		
		ArrayList<Object> list = null;
		
		try {
			list = cdao
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

}
