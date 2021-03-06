DECLARE
    V_DEPT DEPT%ROWTYPE;
BEGIN
    SELECT DEPTNO,
        DNAME,
        LOC INTO V_DEPT
    FROM DEPT
    WHERE DEPTNO = 40;
--ORA-01422: 실제 인출은 요구된 것보다 많은 수의 행을 추출합니다
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT.LOC);
END;
/


-- 출력
--DEPTNO : 40
--DNAME : OPERATIONS
--LOC : BOSTON