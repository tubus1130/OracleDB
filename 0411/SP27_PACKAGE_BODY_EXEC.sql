DECLARE

BEGIN
    DBMS_OUTPUT.PUT_LINE('FUNCTION func_aftertax(sal NUMBER)');
    DBMS_OUTPUT.PUT_LINE('aftertax : ' || PKG_EXAMPLE.func_aftertax(3000));
    
    DBMS_OUTPUT.PUT_LINE('PROCEDURE pro_emp(7788)');
    PKG_EXAMPLE.pro_emp(7788);
    DBMS_OUTPUT.PUT_LINE('PROCEDURE pro_dept(10)');
    PKG_EXAMPLE.pro_dept(10);
END;
/


--FUNCTION func_aftertax(sal NUMBER)
--aftertax : 2850
--PROCEDURE pro_emp(7788)
--ENAME : SCOTT
--SAL : 3000
--PROCEDURE pro_dept(10)
--DNAME : ACCOUNTING
--LOC : NEW YORK