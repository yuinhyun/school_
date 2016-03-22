CREATE SEQUENCE hak
START WITH 20160001
INCREMENT BY 1;

drop SEQUENCE hak;

CREATE TABLE Grade(
	hak NUMBER PRIMARY KEY,
	id VARCHAR2(30) UNIQUE,
	java NUMBER,
	sql NUMBER,
	jsp NUMBER,
	spring NUMBER
);

INSERT INTO Grade(hak, id, java, sql, jsp, spring)
VALUES(hak.NEXTVAL,'hong' ,80, 90, 70, 60);
INSERT INTO Grade(hak, id, java, sql, jsp, spring)
VALUES(hak.NEXTVAL, 'kim' ,70, 100, 80, 60);
INSERT INTO Grade(hak, id, java, sql, jsp, spring)
VALUES(hak.NEXTVAL, 'yu' ,30, 90, 70, 60);
INSERT INTO Grade(hak, id, java, sql, jsp, spring)
VALUES(hak.NEXTVAL, 'bak' ,80, 90, 70, 80);
INSERT INTO Grade(hak, id, java, sql, jsp, spring)
VALUES(hak.NEXTVAL, 'lee' ,80, 100, 60, 80);
INSERT INTO Grade(hak, id, java, sql, jsp, spring)
VALUES(hak.NEXTVAL, 'lee2' ,40, 60, 70, 80);
INSERT INTO Grade(hak, id, java, sql, jsp, spring)
VALUES(hak.NEXTVAL, 'mang' ,50, 80, 30, 60);

SELECT * FROM Grade;

SELECT * FROM Grade
WHERE id ='lee';

DROP TABLE Grade;

TRUNCATE TABLE Grade;

DELETE FROM Grade;

ALTER TABLE Grade
ADD FOREIGN KEY (id);
