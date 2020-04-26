SELECT * FROM users;



ALTER TABLE users MODIFY userno DEFAULT USERSEQ.NEXTVAL;

INSERT INTO category(cateNo, cateName) VALUES (cateSeq.NEXTVAL, '사업/창업');
INSERT INTO category(cateNo, cateName) VALUES (cateSeq.NEXTVAL, '문화/예술');

ALTER TABLE users
MODIFY userAddr varchar2(100);

select count('userNo') FROM CATEGORY;

ALTER TABLE users ADD CONSTRAINT userIdUnique UNIQUE (userId);

SELECT userSeq.CURRVAL FROM DUAL;

SELECT userNo, userId, userPwd, userName, userAddr, userPhone, userEmail, userJoinDate, userStatus FROM users WHERE userId='jang';
commit

CREATE SEQUENCE bookseq NOCACHE;
CREATE SEQUENCE cateseq NOCACHE;
CREATE SEQUENCE chboardseq NOCACHE;
CREATE SEQUENCE chseq NOCACHE;
CREATE SEQUENCE evboardseq NOCACHE;
CREATE SEQUENCE evseq NOCACHE;
CREATE SEQUENCE noticeseq NOCACHE;
CREATE SEQUENCE userseq NOCACHE;

/* 사용자 */
DROP TABLE users 
	CASCADE CONSTRAINTS;

/* 채널 */
DROP TABLE channel 
	CASCADE CONSTRAINTS;

/* 행사 */
DROP TABLE event 
	CASCADE CONSTRAINTS;

/* 채널관리자 */
DROP TABLE manager 
	CASCADE CONSTRAINTS;

/* 채널리뷰 */
DROP TABLE chBoard 
	CASCADE CONSTRAINTS;

/* 행사QNA */
DROP TABLE evBoard 
	CASCADE CONSTRAINTS;

/* 신청내역 */
DROP TABLE Book 
	CASCADE CONSTRAINTS;

/* 찜목록 */
DROP TABLE favoriteEv 
	CASCADE CONSTRAINTS;

/* 선호카테고리 */
DROP TABLE favoriteCate 
	CASCADE CONSTRAINTS;

/* 카테고리 */
DROP TABLE category 
	CASCADE CONSTRAINTS;

/* 공지사항 */
DROP TABLE notice 
	CASCADE CONSTRAINTS;

/* 행사시간 */
DROP TABLE evTime 
	CASCADE CONSTRAINTS;


/* 사용자 */
CREATE TABLE users (
	userNo INTEGER NOT NULL, /* 회원번호 */
	userId VARCHAR(20) NOT NULL, /* 아이디 */
	userPwd VARCHAR(20) NOT NULL, /* 비밀번호 */
	userName VARCHAR(20) NOT NULL, /* 이름 */
	userAddr VARCHAR(50) NOT NULL, /* 주소 */
	userPhone VARCHAR(15) NOT NULL, /* 전화번호 */
	userEmail VARCHAR(30) NOT NULL, /* 이메일 */
	userJoinDate TIMESTAMP DEFAULT SYSDATE NOT NULL, /* 가입날짜 */
	userstatus INTEGER DEFAULT 1 NOT NULL /* 상태 */
);

COMMENT ON TABLE users IS '사용자';

COMMENT ON COLUMN users.userNo IS '회원번호';

COMMENT ON COLUMN users.userId IS '아이디';

COMMENT ON COLUMN users.userPwd IS '비밀번호';

COMMENT ON COLUMN users.userName IS '이름';

COMMENT ON COLUMN users.userAddr IS '주소';

COMMENT ON COLUMN users.userPhone IS '전화번호';

COMMENT ON COLUMN users.userEmail IS '이메일';

COMMENT ON COLUMN users.userJoinDate IS '가입날짜';

COMMENT ON COLUMN users.userstatus IS '상태';

CREATE UNIQUE INDEX PK_users
	ON users (
		userNo ASC
	);

ALTER TABLE users
	ADD
		CONSTRAINT PK_users
		PRIMARY KEY (
			userNo
		);

/* 채널 */
CREATE TABLE channel (
	chNo INTEGER NOT NULL, /* 채널번호 */
	userNo INTEGER NOT NULL, /* 채널개설자 */
	chName VARCHAR(30) NOT NULL, /* 채널이름 */
	chImg VARCHAR(30), /* 채널이미지 */
	chStatus INTEGER DEFAULT 1 NOT NULL, /* 상태 */
	chDescription VARCHAR(500) /* 설명 */
);

COMMENT ON TABLE channel IS '채널';

COMMENT ON COLUMN channel.chNo IS '채널번호';

COMMENT ON COLUMN channel.userNo IS '채널개설자';

COMMENT ON COLUMN channel.chName IS '채널이름';

COMMENT ON COLUMN channel.chImg IS '채널이미지';

COMMENT ON COLUMN channel.chStatus IS '상태';

COMMENT ON COLUMN channel.chDescription IS '설명';

CREATE UNIQUE INDEX PK_channel
	ON channel (
		chNo ASC
	);

ALTER TABLE channel
	ADD
		CONSTRAINT PK_channel
		PRIMARY KEY (
			chNo
		);

/* 행사 */
CREATE TABLE event (
	evNo INTEGER NOT NULL, /* 행사번호 */
	cateNo INTEGER NOT NULL, /* 카테고리번호 */
	chNo INTEGER NOT NULL, /* 채널번호 */
	evName VARCHAR(50) NOT NULL, /* 행사이름 */
	evPrice INTEGER DEFAULT 0 NOT NULL, /* 참가비 */
	evAddr VARCHAR(100) DEFAULT 'OnLine' NOT NULL, /* 장소 */
	evBookMax INTEGER NOT NULL, /* 정원 */
	evDescription VARCHAR(600), /* 설명 */
	evStatus INTEGER DEFAULT 1 NOT NULL, /* 상태 */
	evPhone VARCHAR(15) NOT NULL, /* 연락처 */
	evEmail VARCHAR(30) NOT NULL, /* 이메일 */
	evImg VARCHAR(30), /* 이미지 */
	evImgDetail VARCHAR(30) /* 상세이미지 */
);

COMMENT ON TABLE event IS '행사';

COMMENT ON COLUMN event.evNo IS '행사번호';

COMMENT ON COLUMN event.cateNo IS '카테고리번호';

COMMENT ON COLUMN event.chNo IS '채널번호';

COMMENT ON COLUMN event.evName IS '행사이름';

COMMENT ON COLUMN event.evPrice IS '참가비';

COMMENT ON COLUMN event.evAddr IS '장소';

COMMENT ON COLUMN event.evBookMax IS '정원';

COMMENT ON COLUMN event.evDescription IS '설명';

COMMENT ON COLUMN event.evStatus IS '상태';

COMMENT ON COLUMN event.evPhone IS '연락처';

COMMENT ON COLUMN event.evEmail IS '이메일';

COMMENT ON COLUMN event.evImg IS '이미지';

COMMENT ON COLUMN event.evImgDetail IS '상세이미지';

CREATE UNIQUE INDEX PK_event
	ON event (
		evNo ASC
	);

ALTER TABLE event
	ADD
		CONSTRAINT PK_event
		PRIMARY KEY (
			evNo
		);

/* 채널관리자 */
CREATE TABLE manager (
	chNo INTEGER NOT NULL, /* 채널번호 */
	userNo INTEGER NOT NULL, /* 회원번호 */
	grade INTEGER NOT NULL /* 등급분류 */
);

COMMENT ON TABLE manager IS '채널관리자';

COMMENT ON COLUMN manager.chNo IS '채널번호';

COMMENT ON COLUMN manager.userNo IS '회원번호';

COMMENT ON COLUMN manager.grade IS '등급분류';

CREATE UNIQUE INDEX PK_manager
	ON manager (
		chNo ASC,
		userNo ASC
	);

ALTER TABLE manager
	ADD
		CONSTRAINT PK_manager
		PRIMARY KEY (
			chNo,
			userNo
		);

/* 채널리뷰 */
CREATE TABLE chBoard (
	chBoardNo INTEGER NOT NULL, /* 리뷰번호 */
	userNo INTEGER NOT NULL, /* 회원번호 */
	chNo INTEGER NOT NULL, /* 채널번호 */
	chBoardContent VARCHAR(200) NOT NULL, /* 내용 */
	chBoardStar INTEGER DEFAULT 0 NOT NULL, /* 별점 */
	chBoardStatus INTEGER DEFAULT 1 NOT NULL, /* 상태 */
	chBoardTime TIMESTAMP DEFAULT SYSDATE NOT NULL /* 날짜 */
);

COMMENT ON TABLE chBoard IS '채널리뷰';

COMMENT ON COLUMN chBoard.chBoardNo IS '리뷰번호';

COMMENT ON COLUMN chBoard.userNo IS '회원번호';

COMMENT ON COLUMN chBoard.chNo IS '채널번호';

COMMENT ON COLUMN chBoard.chBoardContent IS '내용';

COMMENT ON COLUMN chBoard.chBoardStar IS '별점';

COMMENT ON COLUMN chBoard.chBoardStatus IS '상태';

COMMENT ON COLUMN chBoard.chBoardTime IS '날짜';

CREATE UNIQUE INDEX PK_chBoard
	ON chBoard (
		chBoardNo ASC
	);

ALTER TABLE chBoard
	ADD
		CONSTRAINT PK_chBoard
		PRIMARY KEY (
			chBoardNo
		);

/* 행사QNA */
CREATE TABLE evBoard (
	evBoardNo INTEGER NOT NULL, /* 글번호 */
	evNo INTEGER NOT NULL, /* 행사번호 */
	userNo INTEGER NOT NULL, /* 회원번호 */
	evBoardParentNo INTEGER NOT NULL, /* 부모글번호 */
	evBoardContent VARCHAR(200) NOT NULL, /* 내용 */
	evBoardTime TIMESTAMP DEFAULT SYSDATE NOT NULL, /* 날짜 */
	evBoardStatus INTEGER DEFAULT 1 NOT NULL /* 상태 */
);

COMMENT ON TABLE evBoard IS '행사QNA';

COMMENT ON COLUMN evBoard.evBoardNo IS '글번호';

COMMENT ON COLUMN evBoard.evNo IS '행사번호';

COMMENT ON COLUMN evBoard.userNo IS '회원번호';

COMMENT ON COLUMN evBoard.evBoardParentNo IS '부모글번호';

COMMENT ON COLUMN evBoard.evBoardContent IS '내용';

COMMENT ON COLUMN evBoard.evBoardTime IS '날짜';

COMMENT ON COLUMN evBoard.evBoardStatus IS '상태';

CREATE UNIQUE INDEX PK_evBoard
	ON evBoard (
		evBoardNo ASC
	);

ALTER TABLE evBoard
	ADD
		CONSTRAINT PK_evBoard
		PRIMARY KEY (
			evBoardNo
		);

/* 신청내역 */
CREATE TABLE Book (
	bookNo INTEGER NOT NULL, /* 신청번호 */
	userNo INTEGER NOT NULL, /* 회원번호 */
	evNo INTEGER NOT NULL, /* 행사번호 */
	bookTime TIMESTAMP DEFAULT SYSDATE NOT NULL, /* 신청일 */
	bookStatus INTEGER DEFAULT 1 NOT NULL /* 상태 */
);

COMMENT ON TABLE Book IS '신청내역';

COMMENT ON COLUMN Book.bookNo IS '신청번호';

COMMENT ON COLUMN Book.userNo IS '회원번호';

COMMENT ON COLUMN Book.evNo IS '행사번호';

COMMENT ON COLUMN Book.bookTime IS '신청일';

COMMENT ON COLUMN Book.bookStatus IS '상태';

CREATE UNIQUE INDEX PK_Book
	ON Book (
		bookNo ASC
	);

ALTER TABLE Book
	ADD
		CONSTRAINT PK_Book
		PRIMARY KEY (
			bookNo
		);

/* 찜목록 */
CREATE TABLE favoriteEv (
	userNo INTEGER NOT NULL, /* 회원번호 */
	evNo INTEGER NOT NULL /* 행사번호 */
);

COMMENT ON TABLE favoriteEv IS '찜목록';

COMMENT ON COLUMN favoriteEv.userNo IS '회원번호';

COMMENT ON COLUMN favoriteEv.evNo IS '행사번호';

CREATE UNIQUE INDEX PK_favoriteEv
	ON favoriteEv (
		userNo ASC,
		evNo ASC
	);

ALTER TABLE favoriteEv
	ADD
		CONSTRAINT PK_favoriteEv
		PRIMARY KEY (
			userNo,
			evNo
		);

/* 선호카테고리 */
CREATE TABLE favoriteCate (
	userNo INTEGER NOT NULL, /* 회원번호 */
	cateNo INTEGER NOT NULL /* 카테고리번호 */
);

COMMENT ON TABLE favoriteCate IS '선호카테고리';

COMMENT ON COLUMN favoriteCate.userNo IS '회원번호';

COMMENT ON COLUMN favoriteCate.cateNo IS '카테고리번호';

CREATE UNIQUE INDEX PK_favoriteCate
	ON favoriteCate (
		userNo ASC,
		cateNo ASC
	);

ALTER TABLE favoriteCate
	ADD
		CONSTRAINT PK_favoriteCate
		PRIMARY KEY (
			userNo,
			cateNo
		);

/* 카테고리 */
CREATE TABLE category (
	cateNo INTEGER NOT NULL, /* 카테고리번호 */
	cateName VARCHAR(20) NOT NULL /* 카테고리이름 */
);

COMMENT ON TABLE category IS '카테고리';

COMMENT ON COLUMN category.cateNo IS '카테고리번호';

COMMENT ON COLUMN category.cateName IS '카테고리이름';

CREATE UNIQUE INDEX PK_category
	ON category (
		cateNo ASC
	);

ALTER TABLE category
	ADD
		CONSTRAINT PK_category
		PRIMARY KEY (
			cateNo
		);

/* 공지사항 */
CREATE TABLE notice (
	noticeNo INTEGER NOT NULL, /* 공지번호 */
	noticeSubject VARCHAR(50) NOT NULL, /* 제목 */
	noticeContent VARCHAR(200) NOT NULL, /* 내용 */
	noticeTime TIMESTAMP DEFAULT SYSDATE NOT NULL, /* 날짜 */
	noticeStatus INTEGER DEFAULT 1 NOT NULL /* 상태 */
);

COMMENT ON TABLE notice IS '공지사항';

COMMENT ON COLUMN notice.noticeNo IS '공지번호';

COMMENT ON COLUMN notice.noticeSubject IS '제목';

COMMENT ON COLUMN notice.noticeContent IS '내용';

COMMENT ON COLUMN notice.noticeTime IS '날짜';

COMMENT ON COLUMN notice.noticeStatus IS '상태';

CREATE UNIQUE INDEX PK_notice
	ON notice (
		noticeNo ASC
	);

ALTER TABLE notice
	ADD
		CONSTRAINT PK_notice
		PRIMARY KEY (
			noticeNo
		);

/* 행사시간 */
CREATE TABLE evTime (
	evNo INTEGER NOT NULL, /* 행사번호 */
	evCreateTime TIMESTAMP DEFAULT SYSDATE NOT NULL, /* 등록일시 */
	evStartTime TIMESTAMP NOT NULL, /* 행사시작 */
	evEndTime TIMESTAMP NOT NULL, /* 행사종료 */
	evBookStartTime TIMESTAMP NOT NULL, /* 예약시작 */
	evBookEndTime TIMESTAMP NOT NULL /* 예약종료 */
);

COMMENT ON TABLE evTime IS '행사시간';

COMMENT ON COLUMN evTime.evNo IS '행사번호';

COMMENT ON COLUMN evTime.evCreateTime IS '등록일시';

COMMENT ON COLUMN evTime.evStartTime IS '행사시작';

COMMENT ON COLUMN evTime.evEndTime IS '행사종료';

COMMENT ON COLUMN evTime.evBookStartTime IS '예약시작';

COMMENT ON COLUMN evTime.evBookEndTime IS '예약종료';

CREATE UNIQUE INDEX PK_evTime
	ON evTime (
		evNo ASC
	);

ALTER TABLE evTime
	ADD
		CONSTRAINT PK_evTime
		PRIMARY KEY (
			evNo
		);


ALTER TABLE channel
	ADD
		CONSTRAINT FK_users_TO_channel
		FOREIGN KEY (
			userNo
		)
		REFERENCES users (
			userNo
		);

ALTER TABLE event
	ADD
		CONSTRAINT FK_category_TO_event
		FOREIGN KEY (
			cateNo
		)
		REFERENCES category (
			cateNo
		);

ALTER TABLE event
	ADD
		CONSTRAINT FK_channel_TO_event
		FOREIGN KEY (
			chNo
		)
		REFERENCES channel (
			chNo
		);

ALTER TABLE manager
	ADD
		CONSTRAINT FK_channel_TO_manager
		FOREIGN KEY (
			chNo
		)
		REFERENCES channel (
			chNo
		);

ALTER TABLE manager
	ADD
		CONSTRAINT FK_users_TO_manager
		FOREIGN KEY (
			userNo
		)
		REFERENCES users (
			userNo
		);

ALTER TABLE chBoard
	ADD
		CONSTRAINT FK_users_TO_chBoard
		FOREIGN KEY (
			userNo
		)
		REFERENCES users (
			userNo
		);

ALTER TABLE chBoard
	ADD
		CONSTRAINT FK_channel_TO_chBoard
		FOREIGN KEY (
			chNo
		)
		REFERENCES channel (
			chNo
		);

ALTER TABLE evBoard
	ADD
		CONSTRAINT FK_event_TO_evBoard
		FOREIGN KEY (
			evNo
		)
		REFERENCES event (
			evNo
		);

ALTER TABLE evBoard
	ADD
		CONSTRAINT FK_users_TO_evBoard
		FOREIGN KEY (
			userNo
		)
		REFERENCES users (
			userNo
		);

ALTER TABLE evBoard
	ADD
		CONSTRAINT FK_evBoard_TO_evBoard
		FOREIGN KEY (
			evBoardParentNo
		)
		REFERENCES evBoard (
			evBoardNo
		);

ALTER TABLE Book
	ADD
		CONSTRAINT FK_users_TO_Book
		FOREIGN KEY (
			userNo
		)
		REFERENCES users (
			userNo
		);

ALTER TABLE Book
	ADD
		CONSTRAINT FK_event_TO_Book
		FOREIGN KEY (
			evNo
		)
		REFERENCES event (
			evNo
		);

ALTER TABLE favoriteEv
	ADD
		CONSTRAINT FK_users_TO_favoriteEv
		FOREIGN KEY (
			userNo
		)
		REFERENCES users (
			userNo
		);

ALTER TABLE favoriteEv
	ADD
		CONSTRAINT FK_event_TO_favoriteEv
		FOREIGN KEY (
			evNo
		)
		REFERENCES event (
			evNo
		);

ALTER TABLE favoriteCate
	ADD
		CONSTRAINT FK_users_TO_favoriteCate
		FOREIGN KEY (
			userNo
		)
		REFERENCES users (
			userNo
		);

ALTER TABLE favoriteCate
	ADD
		CONSTRAINT FK_category_TO_favoriteCate
		FOREIGN KEY (
			cateNo
		)
		REFERENCES category (
			cateNo
		);

ALTER TABLE evTime
	ADD
		CONSTRAINT FK_event_TO_evTime
		FOREIGN KEY (
			evNo
		)
		REFERENCES event (
			evNo
		);