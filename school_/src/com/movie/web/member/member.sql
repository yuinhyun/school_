SELECT * FROM Member
CREATE TABLE Member(
	id VARCHAR2(30) PRIMARY KEY,
	name VARCHAR2(30) NOT NULL,
	password VARCHAR2(30) NOT NULL,
	addr VARCHAR2(100),
	birth NUMBER
);

INSERT INTO Member(id, name, password, addr, birth)
VALUES('hong', '홍길동','1','서울',800101);
INSERT INTO Member(id, name, password, addr, birth)
VALUES('kim', '김학사','2','부산',841221);
INSERT INTO Member(id, name, password, addr, birth)
VALUES('yu', '유인현','3','서울',8508015);
INSERT INTO Member(id, name, password, addr, birth)
VALUES('bak', '박준수','4','대전',830326);
INSERT INTO Member(id, name, password, addr, birth)
VALUES('lee', '이기동','5','인천',820716);
INSERT INTO Member(id, name, password, addr, birth)
VALUES('lee2', '이기동','5','LA',820716);
INSERT INTO Member
VALUES('mang', '망둥어','6','대구',830704);

SELECT * FROM Member
WHERE name ='이기동';
