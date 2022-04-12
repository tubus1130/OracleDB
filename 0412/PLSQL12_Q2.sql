-- P519 Q2
CREATE OR REPLACE FUNCTION FUNC_DATE_KOR
(
    INPUT_DATE IN DATE
)
RETURN VARCHAR2
IS
BEGIN
    RETURN TO_CHAR(INPUT_DATE, 'YYYY"��"MM"��"DD"��"');
END FUNC_DATE_KOR;
/

SELECT ENAME, 
    FUNC_DATE_KOR(HIREDATE) AS HIREDATE
FROM EMP
WHERE EMPNO = 7369;