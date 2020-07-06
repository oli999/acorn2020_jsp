
-- 방명록 글을 저장할 테이블
CREATE TABLE board_guest(
	num NUMBER PRIMARY KEY,
	writer VARCHAR2(50) NOT NULL,
	title VARCHAR2(100) NOT NULL,
	content CLOB,
	regdate DATE
);

-- 방명록 테이블에 글번호를 생성할 시퀀스
CREATE SEQUENCE board_guest_seq;