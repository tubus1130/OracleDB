--Student 테이블과 Professor 테이블을 Join하여 학생이름과 
--지도교수 이름을 출력하세요.																				
--단 지도교수가 결정되지 않은 학생의 명단도 함께 출력하세요.

-- ORACLE OUTER JOIN
-- WHERE 조건절에 데이터가 없는쪽에 (+)
SELECT t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
;

-- ANSI OUTER JOIN
-- JOIN 조건절에 데이터가 있는쪽에 방향표시
SELECT t1.name AS "STUD_NAME",
    t2.name AS "PROF_NAME"
FROM student t1 LEFT OUTER JOIN professor t2
ON t1.profno = t2.profno
;