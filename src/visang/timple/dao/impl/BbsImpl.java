package visang.timple.dao.impl;

import java.util.List;

import visang.timple.model.BbsDTO;

public interface BbsImpl {

	// 게시물 공지사항 3개 가져오기
	public List<BbsDTO> list1();
	
	// 게시물 추천 3개 가져오기
	public List<BbsDTO> list2();
	
	// 게시물 목록 10개 가져오기
	public List<BbsDTO> list3();
	
}
