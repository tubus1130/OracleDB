-- %ROWTYPE

DECLARE
    -- 연관 배열 정의
    TYPE ITAB_DEPT IS TABLE OF DEPT%ROWTYPE
    INDEX BY PLS_INTEGER;
    
    dept_arr ITAB_DEPT;
    idx PLS_INTEGER := 0;
BEGIN
    FOR i IN (SELECT * FROM DEPT) LOOP
        idx := idx + 1;
        dept_arr(idx).deptno := i.deptno;
        dept_arr(idx).dname := i.dname;
        dept_arr(idx).loc := i.loc;
        
        DBMS_OUTPUT.PUT_LINE(dept_arr(idx).deptno || ' : '
            || dept_arr(idx).dname || ' : '
            || dept_arr(idx).loc);
        
    END LOOP;
END;
/


--출력
--10 : ACCOUNTING : NEW YORK
--20 : RESEARCH : DALLAS
--30 : SALES : CHICAGO
--40 : OPERATIONS : BOSTON