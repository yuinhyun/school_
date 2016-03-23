DROP VIEW GradeMember CASCADE CONSTRAINT;

CREATE OR REPLACE VIEW GradeMember
AS
SELECT  
    g.score_seq AS score_seq, 
    g.id AS id,
    g.java AS java, 
    g.sql AS sql,
    g.jsp AS jsp,
    g.spring AS spring,
    m.name AS name,
    m.password AS password, 
    m.addr AS addr,
    M.birth AS   birth
FROM Member m, Grade g
WHERE m.id = g.id;

SELECT * FROM GradeMember
WHERE id ='hong';

SELECT COUNT(*) AS count
FROM GRADEMEMBER;