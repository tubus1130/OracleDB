-- EMP_DDL
DROP TABLE emp_ddl;
CREATE TABLE emp_ddl(
    empno NUMBER(4),
    ename VARCHAR2(10),
    job VARCHAR2(9),
    mgr NUMBER(4),
    hiredate DATE,
    sal NUMBER(7, 2),
    comm NUMBER(7, 2),
    deptno NUMBER(2)   
);

DESC emp_ddl;

-- TABLE COMMENT
COMMENT ON TABLE EMP_DDL IS '���';

-- COLUMN COMMENT
COMMENT ON COLUMN EMP_DDL.empno IS '���' ;
COMMENT ON COLUMN EMP_DDL.ename IS '�̸�' ;
COMMENT ON COLUMN EMP_DDL.job IS '����' ;
COMMENT ON COLUMN EMP_DDL.mgr IS '�Ŵ���' ;
COMMENT ON COLUMN EMP_DDL.hiredate IS '�Ի���' ;
COMMENT ON COLUMN EMP_DDL.sal IS '�޿�' ;
COMMENT ON COLUMN EMP_DDL.comm IS '����' ;
COMMENT ON COLUMN EMP_DDL.deptno IS '�μ���ȣ' ;
