-- ���ڿ��� ���ڵ����Ϳ� �ִ¿���
DECLARE
    V_WRONG NUMBER;
BEGIN
    -- ���ڿ� -> NUMBER
    SELECT DNAME INTO V_WRONG
    FROM DEPT
    WHERE DEPTNO = 10;
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : ��ġ �Ǵ� �� ���� �߻�');
END;
/


--���
--���� ó�� : ��ġ �Ǵ� �� ���� �߻�