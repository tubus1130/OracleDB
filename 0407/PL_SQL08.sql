SET SERVEROUTPUT ON;

DECLARE
    V_TAX CONSTANT NUMBER(1) := 3;
BEGIN
--  V_TAX := 9;
--  ORA-06550: �� 4, ��5:PLS-00363: 'V_TAX' ���� ���Ҵ��ڷ� ���� �� �����ϴ�
    DBMS_OUTPUT.PUT_LINE('V_TAX : ' || V_TAX);
END;
/

--V_TAX : 3
--PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.