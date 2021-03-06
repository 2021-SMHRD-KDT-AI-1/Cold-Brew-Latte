DROP TABLE STUDY_MEMBER CASCADE CONSTRAINTS;
DROP TABLE Q_NUM CASCADE CONSTRAINTS;
DROP TABLE TEST_SHEET CASCADE CONSTRAINTS;
DROP TABLE W_NUM CASCADE CONSTRAINTS;

select * from STUDY_MEMBER
select * from Q_NUM

CREATE TABLE STUDY_MEMBER(
MEMBER_NUM NUMBER,
NICK VARCHAR2(80) NOT NULL,
CONSTRAINT STUDY_MEMBER_MEMBER_NUM_PK PRIMARY KEY(MEMBER_NUM),
CONSTRAINT STUDY_MEMBER_NICK_UK UNIQUE(NICK)
);

CREATE TABLE Q_NUM(
Q_INDEX NUMBER,
Q_YEAR VARCHAR2(4),
Q_ROUND NUMBER NOT NULL,
Q_COUNT NUMBER,
Q_CONTENT VARCHAR2(1000),
SELECT1 VARCHAR2(300),
SELECT2 VARCHAR2(300),
SELECT3 VARCHAR2(300),
SELECT4 VARCHAR2(300),
ANS NUMBER NOT NULL,
TAG VARCHAR(300),
CONSTRAINT Q_NUM_Q_INDEX_PK PRIMARY KEY(Q_INDEX),
CONSTRAINT Q_NUM_ANS_CK CHECK(ANS IN(1, 2, 3, 4))
);

CREATE TABLE TEST_SHEET(
SHEET_NUM NUMBER NOT NULL,
SHEET_TYPE VARCHAR2(16) NOT NULL,
SHEET_NAME VARCHAR2(200) NOT NULL,
MEMBER_NUM NUMBER,
Q_HAVE VARCHAR2(500),
CONSTRAINT TEST_SHEET_SHEET_NUM_PK PRIMARY KEY(SHEET_NUM),
CONSTRAINT TEST_SHEET_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM)
REFERENCES STUDY_MEMBER(MEMBER_NUM),
CONSTRAINT TEST_SHEET_SHEET_TYPE_CK CHECK(SHEET_TYPE IN('S', 'F', 'W'))
);

CREATE TABLE W_NUM(
MEMBER_NUM NUMBER,
SHEET_NUM NUMBER,
Q_INDEX NUMBER,
W_SELECT NUMBER NOT NULL,
CONSTRAINT W_NUM_MEMBER_NUM_FK FOREIGN KEY(MEMBER_NUM)
REFERENCES STUDY_MEMBER(MEMBER_NUM),
CONSTRAINT W_NUM_SHEET_NUM_FK FOREIGN KEY(SHEET_NUM)
REFERENCES TEST_SHEET(SHEET_NUM),
CONSTRAINT W_NUM_Q_INDEX_FK FOREIGN KEY(Q_INDEX)
REFERENCES Q_NUM(Q_INDEX)
);

DROP SEQUENCE MEMBER_NUM_SEQ;
DROP SEQUENCE Q_INDEX_SEQ;
DROP SEQUENCE SHEET_NUM_SEQ;

CREATE SEQUENCE MEMBER_NUM_SEQ
	START WITH 1
	NOCACHE
	NOCYCLE;

CREATE SEQUENCE Q_INDEX_SEQ
	START WITH 1
	NOCACHE
	NOCYCLE;

CREATE SEQUENCE SHEET_NUM_SEQ
	START WITH 1
	NOCACHE
	NOCYCLE;



INSERT INTO STUDY_MEMBER
VALUES(MEMBER_NUM_SEQ.NEXTVAL, 'ADMIN');
INSERT INTO STUDY_MEMBER
VALUES(MEMBER_NUM_SEQ.NEXTVAL, 'DELKIN');
INSERT INTO STUDY_MEMBER
VALUES(MEMBER_NUM_SEQ.NEXTVAL, 'BBBAAM');
INSERT INTO STUDY_MEMBER
VALUES(MEMBER_NUM_SEQ.NEXTVAL, 'CUTIE');
INSERT INTO STUDY_MEMBER
VALUES(MEMBER_NUM_SEQ.NEXTVAL, 'KKOMA');



INSERT INTO TEST_SHEET
VALUES(SHEET_NUM_SEQ.NEXTVAL, 'S', '2021S', 1, '1, 2, 3, 4, 5, 6, 7, 8, 9, 10');
INSERT INTO TEST_SHEET
VALUES(SHEET_NUM_SEQ.NEXTVAL, 'F', '2019F', 1, '11, 12, 13, 14, 15, 16, 17, 18, 19, 20');
INSERT INTO TEST_SHEET
VALUES(SHEET_NUM_SEQ.NEXTVAL, 'W', '2020W', 2, '1, 2, 3, 4, 5, 6, 7, 8, 9, 10');
INSERT INTO TEST_SHEET
VALUES(SHEET_NUM_SEQ.NEXTVAL, 'W', '2020W', 2, '11, 22, 33, 44, 55, 66, 77, 88, 99, 100');


