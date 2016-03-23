CREATE SEQUENCE score_seq
START WITH 1
INCREMENT BY 1;

drop SEQUENCE score_seq;

CREATE TABLE Grade(
	score_seq NUMBER PRIMARY KEY,
	id VARCHAR2(30) NOT NULL,
	java NUMBER NOT NULL,
	sql NUMBER NOT NULL,
	jsp NUMBER NOT NULL,
	spring NUMBER NOT NULL
);

ALTER TABLE Grade RENAME hak TO examSeq;

DROP TABLE Grade CASCADE CONSTRAINT;

INSERT INTO Grade(score_seq, id, java, sql, jsp, spring)
VALUES(score_seq.NEXTVAL,'hong' ,80, 90, 70, 60);
INSERT INTO Grade(score_seq, id, java, sql, jsp, spring)
VALUES(score_seq.NEXTVAL, 'kim' ,70, 100, 80, 60);
INSERT INTO Grade(score_seq, id, java, sql, jsp, spring)
VALUES(score_seq.NEXTVAL, 'yu' ,30, 90, 70, 60);
INSERT INTO Grade(score_seq, id, java, sql, jsp, spring)
VALUES(score_seq.NEXTVAL, 'bak' ,80, 90, 70, 80);
INSERT INTO Grade(score_seq, id, java, sql, jsp, spring)
VALUES(score_seq.NEXTVAL, 'lee' ,80, 100, 60, 80);
INSERT INTO Grade(score_seq, id, java, sql, jsp, spring)
VALUES(score_seq.NEXTVAL, 'lee2' ,40, 60, 70, 80);
INSERT INTO Grade(score_seq, id, java, sql, jsp, spring)
VALUES(score_seq.NEXTVAL, 'mang' ,50, 80, 30, 60);
INSERT INTO Grade(score_seq, id, java, sql, jsp, spring)
VALUES(score_seq.NEXTVAL,'hong' ,20, 20, 20, 20);

SELECT * FROM Grade;

SELECT * FROM Grade
WHERE id ='hong';

DROP TABLE Grade;

TRUNCATE TABLE Grade;

DELETE FROM Grade;

ALTER TABLE Grade
ADD FOREIGN KEY (id);
