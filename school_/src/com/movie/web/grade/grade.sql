private String id;
	private int hak, java, sql, jsp, spring;

CREATE TABLE Grade(
	hak NUMBER PRIMARY KEY,
	id VARCHAR2(30) NOT NULL,
	java NUMBER,
	sql NUMBER,
	jsp NUMBER,
	spring NUMBER
);

INSERT INTO Grade(hak, id, java, spl, jsp, spring)
VALUES(2006224578,'hong' ,80, 90, 70, 60);
INSERT INTO Grade(hak, id, java, spl, jsp, spring)
VALUES(20072674, 'kim' ,70, 100, 80, 60);
INSERT INTO Grade(hak, id, java, spl, jsp, spring)
VALUES(20081275, 'yu' ,80, 90, 70, 60);
INSERT INTO Grade(hak, id, java, spl, jsp, spring)
VALUES(20092147, 'bak' ,70, 90, 70, 80);
INSERT INTO Grade(hak, id, java, spl, jsp, spring)
VALUES(20105745, 'lee' ,80, 100, 60, 80);
INSERT INTO Grade(hak, id, java, spl, jsp, spring)
VALUES(20031247, 'mang' ,70, 80, 60, 90);

SELECT * FROM Grade;

SELECT * FROM Grade
WHERE id ='kim';

