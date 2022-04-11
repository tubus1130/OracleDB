-- RECORD ����
-- ���ǵ� ���� ����

SET SERVEROUTPUT ON;
DECLARE
    -- RECORD ����
    TYPE REC_DEPT IS RECORD(
        DEPTNO NUMBER(2) NOT NULL := 99,
        DNAME DEPT.DNAME%TYPE,
        LOC DEPT.LOC%TYPE
    );
    -- ���ǵ� ��������
    DEPT_REC REC_DEPT;
BEGIN
    DEPT_REC.DEPTNO := 20;
    DEPT_REC.DNAME := 'DATABASE';
    DEPT_REC.LOC := 'SEOUL';
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || DEPT_REC.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || DEPT_REC.DNAME); 
    DBMS_OUTPUT.PUT_LINE('LOC : ' || DEPT_REC.LOC); 
END;
/


--���
--DEPTNO : 20
--DNAME : DATABASE
--LOC : SEOUL