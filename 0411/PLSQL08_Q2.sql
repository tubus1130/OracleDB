-- P479 Q2
DECLARE
    V_WRONG DATE;
BEGIN
    SELECT ENAME INTO V_WRONG
    FROM EMP
    WHERE EMPNO = 7369;
    
    DBMS_OUTPUT.PUT_LINE('예외가 발생하면 다음 문장은 실행되지 않습니다');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('오류가 발생하였습니다.[' || TO_CHAR(SYSDATE, 'YYYY"년"MM"월"DD"일" hh"시"mm"분"ss"초"]'));
        DBMS_OUTPUT.PUT_LINE('SQLCODE : ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('SQLERRM : ' || SQLERRM);
END;
/