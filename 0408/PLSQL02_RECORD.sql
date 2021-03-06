-- CTAS로 DEPT_RECORD 테이블 생성
-- 레코드 사용해 입력
-- 입력데이터 확인

-- CTAS로 DEPT_RECORD 테이블 생성
CREATE TABLE DEPT_RECORD
AS(
    SELECT *
    FROM DEPT
);

-- 테이블 생성 확인
SELECT * FROM DEPT_RECORD;

SET SERVEROUTPUT ON;
DECLARE
    -- RECORD 정의
    TYPE REC_DEPT IS RECORD(
        DEPTNO NUMBER(2) NOT NULL := 99,
        DNAME DEPT_RECORD.DNAME%TYPE,
        LOC DEPT_RECORD.LOC%TYPE
    );
    -- RECORD 선언
    DEPT_REC REC_DEPT;
BEGIN
    DEPT_REC.DEPTNO := 70;
    DEPT_REC.DNAME := 'DEVELOPER';
    DEPT_REC.LOC := 'SINCHON';
    
    INSERT INTO DEPT_RECORD
        VALUES DEPT_REC;
    COMMIT;
END;
/

SELECT * FROM DEPT_RECORD;