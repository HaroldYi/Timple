package visang.timple.dao.impl;

import java.util.List;

public interface MemberDaoImpl {
	public List<String> getOneCategory();
	public List<String> getTwoCategory(int oneCategorySeq);
}
