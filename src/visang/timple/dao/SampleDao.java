package visang.timple.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import visang.timple.dao.impl.SampleDaoImpl;

@Service("sampleService")
public class SampleDao implements SampleDaoImpl {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSessionTemplate(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public String getName(String email) {
		return (String) sqlSession.selectOne("sample.getName", email);
	}

}
