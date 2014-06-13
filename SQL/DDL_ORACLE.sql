-- DDL of CREATE : ORACLE

CREATE TABLE member (
	memberId NUMBER PRIMARY KEY,
	memberName NVARCHAR2(10) NOT NULL,
	email NVARCHAR2(50) NOT NULL,
	tel NVARCHAR2(20) NOT NULL,
	pw NVARCHAR2(20) NOT NULL,
	inform NUMBER NOT NULL,
	alertCount NUMBER NULL,
	profile NVARCHAR2(50) NULL
);

CREATE TABLE notification (
	NotificationId NUMBER PRIMARY KEY,
	memseq NUMBER REFERENCES member(memberId) NOT NULL,
	content NVARCHAR2(1000) NOT NULL,
	confirm NUMBER NOT NULL
);

CREATE TABLE question (
	questionid NUMBER PRIMARY KEY,
	content NVARCHAR2(50) NULL
);

CREATE TABLE memquestion (
	memquestionId NUMBER PRIMARY KEY,
	memseq NUMBER REFERENCES member(memberId) NOT NULL,
	questionSeq NUMBER REFERENCES question(questionid) NOT NULL,
	quereply NVARCHAR2(50) NULL
);

CREATE TABLE memo (
	memoid NUMBER PRIMARY KEY,
	memseq NUMBER REFERENCES member(memberid) NOT NULL,
	content NVARCHAR2(100) NULL
);

CREATE TABLE friend (
	friendid NUMBER PRIMARY KEY,
	memseq NUMBER REFERENCES member(memberid) NOT NULL,
	friendseq NUMBER REFERENCES member(memberid) NOT NULL
);

CREATE TABLE paper (
	paperid NUMBER PRIMARY KEY,
	content NVARCHAR2(50) NOT NULL,
	regdate DATE NOT NULL,
	sendmemseq NUMBER REFERENCES member(memberid) NOT NULL,
	receivememseq REFERENCES member(memberid) NOT NULL
);

CREATE TABLE acceptance (
	acceptanceid NUMBER PRIMARY KEY,
	paperseq NUMBER REFERENCES paper(paperid) NOT NULL,
	accept NUMBER NULL
);

CREATE TABLE board (
	boardid NUMBER PRIMARY KEY,
	post_type NVARCHAR2(10) NOT NULL,
	memseq NUMBER REFERENCES member(memberid) NOT NULL,
	subject NVARCHAR2(200) NOT NULL,
	content NVARCHAR2(1000) NOT NULL,
	regdate DATE DEFAULT(SYSDATE) NOT NULL,
	readcount NUMBER NOT NULL,
	readcom NUMBER NOT NULL,
	imgfilename VARCHAR2(100) NULL,
	imgorgfilename VARCHAR2(100) NULL,
	thread NUMBER NOT NULL,
	depth NUMBER NOT NULL
);

CREATE TABLE boardcomment (
	commentid NUMBER PRIMARY KEY,
	boardseq NUMBER REFERENCES board(boardid) NOT NULL,
	memseq NUMBER REFERENCES member(memberid) NOT NULL,
	regdate DATE NOT NULL,
	content NVARCHAR2(100) NULL
);

CREATE TABLE commentlabor (
	commentlaborid NUMBER PRIMARY KEY,
	commentseq NUMBER REFERENCES boardcomment(commentid) NOT NULL,
	content NVARCHAR2(200) NOT NULL,
	reporter NUMBER REFERENCES member(memberid) NULL
);

CREATE TABLE labor (
	laborid NUMBER PRIMARY KEY,
	boardseq NUMBER REFERENCES board(boardid) NOT NULL,
	laborcontent NVARCHAR2(300) NULL,
	reporter NUMBER REFERENCES member(memberid) NULL
);

CREATE TABLE qanda (
	qnaid NUMBER PRIMARY KEY,
	memseq NUMBER REFERENCES member(memberid) NOT NULL,
	Classification NVARCHAR2(100) NOT NULL,
	subject NVARCHAR2(100) NOT NULL,
	content NVARCHAR2(1000) NOT NULL,
	open NVARCHAR2(9) NOT NULL,
	replystate NVARCHAR2(9) NULL,
	regdate DATE DEFAULT(SYSDATE) NOT NULL,
	qkind NVARCHAR2(10) NULL
);

CREATE TABLE manager (
	managerid NUMBER PRIMARY KEY,
	id NVARCHAR2(20) NOT NULL,
	pw NVARCHAR2(30) NOT NULL
);

CREATE TABLE alertmessage (
	alertmessageid NUMBER PRIMARY KEY,
	managerseq NUMBER REFERENCES manager(managerid) NOT NULL,
	content NVARCHAR2(1000) NULL,
	memberseq NUMBER REFERENCES member(memberid) NOT NULL
);

CREATE TABLE qndareply (
	qnareplyid NUMBER PRIMARY KEY,
	qandaSeq NUMBER REFERENCES qanda(qnaid) NOT NULL,
	regdate DATE DEFAULT(SYSDATE) NOT NULL,
	subject NVARCHAR2(200) NOT NULL,
	content NVARCHAR2(2000) NOT NULL,
	managerseq NUMBER REFERENCES manager(managerid) NOT NULL
);

CREATE TABLE notice (
	noticeid NUMBER PRIMARY KEY,
	managerseq NUMBER REFERENCES manager(managerid) NOT NULL,
	subject NVARCHAR2(100) NOT NULL,
	content NVARCHAR2(2000) NOT NULL,
	regdate DATE NOT NULL
);

CREATE TABLE onecategory (
	onecategoryid NUMBER PRIMARY KEY,
	onename NVARCHAR2(40) NOT NULL
);

CREATE TABLE twocategory (
	twocategoryid NUMBER PRIMARY KEY,
	twoname NVARCHAR2(40) NOT NULL,
	onecategoryseq NUMBER REFERENCES onecategory(onecategoryid) NOT NULL
);

CREATE TABLE occupation (
	occupationid NUMBER PRIMARY KEY,
	memseq NUMBER REFERENCES member(memberid) NOT NULL,
	twocategoryseq REFERENCES twocategory(twocategoryId) NOT NULL,
	career NUMBER NOT NULL
);

CREATE TABLE project (
	projectid NUMBER PRIMARY KEY,
	name NVARCHAR2(100) NOT NULL,
	startday DATE NOT NULL,
	endday DATE NOT NULL,
	content NVARCHAR2(1000) NOT NULL,
	open NVARCHAR2(9) NOT NULL,
	thumnail NVARCHAR2(100) NULL,
	twoseq NUMBER REFERENCES twocategory(twocategoryid) NOT NULL
);

CREATE TABLE team (
	teamid NUMBER PRIMARY KEY,
	projectseq NUMBER REFERENCES project(projectid) NOT NULL,
	memseq NUMBER REFERENCES member(memberid) NOT NULL,
	greate NUMBER NOT NULL,
	participation NUMBER NOT NULL
);

CREATE TABLE data (
	dataid NUMBER PRIMARY KEY,
	filename VARCHAR2(100) NOT NULL,
	orgfilename VARCHAR2(100) NOT NULL,
	fileexplanation NVARCHAR2(100) NULL,
	projectseq NUMBER REFERENCES project(projectid) NOT NULL
);

CREATE TABLE filelog (
	logid NUMBER PRIMARY KEY,
	dataseq NUMBER REFERENCES data(dataid) NOT NULL,
	state NUMBER NOT NULL,
	editDate DATE NOT NULL,
	teamseq NUMBER REFERENCES team(teamid) NOT NULL
);

-- 보류사항
--CREATE TABLE teamNotice (
	--noticeid PRIMARY KEY,
	--memseq NUMBER REFERENCES team(teamid) NOT NULL,
	--subject NVARCHAR2(100) NOT NULL,
	--content NVARCHAR2(2000) NOT NULL,
	--regdate DATE DEFAULT(SYSDATE) NOT NULL
--);

CREATE TABLE teammemo (
	teammemoid NUMBER PRIMARY KEY,
	teamseq NUMBER REFERENCES team(teamid) NOT NULL,
	subject NVARCHAR2(100) NOT NULL,
	content NVARCHAR2(1000) NOT NULL,
	regdate DATE DEFAULT(SYSDATE) NOT NULL,
	theme NUMBER NULL
);

CREATE TABLE teamboardsort (
	teamboardsortid NUMBER PRIMARY KEY,
	projectseq NUMBER REFERENCES project(projectid) NOT NULL,
	subject NVARCHAR2(20) NOT NULL,
	sort NUMBER NOT NULL
);

CREATE TABLE teamboard (
	teamboardid NUMBER PRIMARY KEY,
	subject NVARCHAR2(100) NOT NULL,
	content NVARCHAR2(1000) NOT NULL,
	teamseq NUMBER REFERENCES team(teamid) NOT NULL,
	regdate DATE NOT NULL,
	readcount NUMBER NOT NULL,
	filename VARCHAR2(100) NULL,
	orgfilename VARCHAR2(100) NULL,
	theme NUMBER NOT NULL,
	teamboardsortseq NUMBER REFERENCES teamboardsort(teamboardsortid) NOT NULL,
	teamboardgrade NUMBER NOT NULL
);

CREATE TABLE teamcomment (
	teamcommentid NUMBER PRIMARY KEY,
	teamcomment NVARCHAR2(1000) NOT NULL,
	regdate DATE DEFAULT(SYSDATE) NOT NULL,
	teamboardseq NUMBER REFERENCES teamboard(teamboardid) NOT NULL,
	teamseq NUMBER REFERENCES team(teamid) NOT NULL
);

CREATE TABLE permission (
	permissionid NUMBER PRIMARY KEY,
	teamboardseq NUMBER REFERENCES teamboard(teamboardid) NULL,
	teamseq NUMBER REFERENCES team(teamid) NULL
);

CREATE TABLE calendar (
	calendarid NUMBER PRIMARY KEY,
	subject NVARCHAR2(100) NOT NULL,
	content NVARCHAR2(1000) NOT NULL,
	startday DATE NOT NULL,
	endday DATE NOT NULL,
	color NVARCHAR2(10) NULL
);

CREATE TABLE teamcalendar (
	teamcalendarid NUMBER PRIMARY KEY,
	teamseq NUMBER REFERENCES team(teamid) NOT NULL,
	calendarseq NUMBER REFERENCES calendar(calendarid) NOT NULL
);

CREATE TABLE BP (
	bpid NUMBER PRIMARY KEY,
	projectseq NUMBER REFERENCES project(projectid) NOT NULL,
	name NVARCHAR2(100) NOT NULL,
	startday DATE NOT NULL,
	endday DATE NOT NULL,
	explanation NVARCHAR2(1000) NULL,
	state NVARCHAR2(10) NOT NULL
);

CREATE TABLE teambp (
	teambpid NUMBER PRIMARY KEY,
	bpseq NUMBER REFERENCES bp(bpid) NOT NULL,
	teamseq NUMBER REFERENCES team(teamid) NOT NULL,
	grade NUMBER NULL
);

CREATE TABLE business (
	businessid NUMBER PRIMARY KEY,
	bpseq NUMBER REFERENCES bp(bpid) NOT NULL,
	subject NVARCHAR2(100) NOT NULL,
	filename NVARCHAR2(100) NULL,
	orgfilename NVARCHAR2(100) NULL,
	content NVARCHAR2(2000) NOT NULL,
	state NVARCHAR2(3) NOT NULL,
	importance NUMBER NOT NULL,
	editdate DATE NOT NULL,
	startday DATE NOT NULL,
	endday DATE NOT NULL
);

CREATE TABLE teambusiness (
	teambusinessid NUMBER PRIMARY KEY,
	businessseq REFERENCES business(businessid) NOT NULL,
	teambpseq REFERENCES teambp(teambpid) NOT NULL
);

CREATE TABLE businesscomment (
	businesscommentid NUMBER PRIMARY KEY,
	businessseq NUMBER REFERENCES business(businessid) NOT NULL,
	teamseq NUMBER REFERENCES team(teamid) NOT NULL,
	content NVARCHAR2(300) NULL
);

CREATE TABLE businesslog (
	businesslogid NUMBER PRIMARY KEY,
	businessseq NUMBER REFERENCES business(businessid) NOT NULL,
	beforestate NVARCHAR2(200) NOT NULL,
	afterstate NVARCHAR2(200) NOT NULL,
	editdate DATE NOT NULL
);

CREATE TABLE repeatday (
	repeatdayid NUMBER PRIMARY KEY,
	day NVARCHAR2(10) NOT NULL
);


CREATE TABLE repeat (
	repeatid NUMBER PRIMARY KEY,
	businessseq REFERENCES business(businessid) NOT NULL,
	repeatdayseq REFERENCES repeatday(repeatdayid) NULL
);

CREATE TABLE introducepdf (
	introducepdfid NUMBER PRIMARY KEY,
	fimename VARCHAR2(100) NULL,
	orgfimename VARCHAR2(100) NULL
);

CREATE TABLE budget (
	budgetid NUMBER PRIMARY KEY,
	projectid NUMBER REFERENCES project(projectid) NOT NULL,
	usage NVARCHAR2(100) NOT NULL,
	input NUMBER DEFAULT(0) NULL,
	output NUMBER DEFAULT(0) NULL,
	btime DATE DEFAULT(SYSDATE) NOT NULL
);

COMMIT;