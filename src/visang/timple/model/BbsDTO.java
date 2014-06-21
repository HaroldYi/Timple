package visang.timple.model;

public class BbsDTO {
	private String boardId;
	private String post_type;
	private int memberSeq;
	private String subject;
	private String content;
	private String regDate;
	private int readCount;
	private int recomCount;
	private String imgfileName;
	private String imgOrgFileName;
	private int thread;
	private int depth;

	private String name;
	private int rowNum;

	public String getBoardId() {
		return boardId;
	}

	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}

	public String getPost_type() {
		return post_type;
	}

	public void setPost_type(String post_type) {
		this.post_type = post_type;
	}

	public int getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(int memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getsubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public int getRecomCount() {
		return recomCount;
	}

	public void setRecomCount(int recomCount) {
		this.recomCount = recomCount;
	}

	public String getImgfileName() {
		return imgfileName;
	}

	public void setImgfileName(String imgfileName) {
		this.imgfileName = imgfileName;
	}

	public String getImgOrgFileName() {
		return imgOrgFileName;
	}

	public void setImgOrgFileName(String imgOrgFileName) {
		this.imgOrgFileName = imgOrgFileName;
	}

	public int getThread() {
		return thread;
	}

	public void setThread(int thread) {
		this.thread = thread;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

}
