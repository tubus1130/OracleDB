-- SYS에서 작업
-- TABLESPACE 정보 확인
SELECT TABLESPACE_NAME,
    FILE_NAME
FROM DBA_DATA_FILES;

-- TABLESPACE 생성 확인
CREATE TABLESPACE goodman_ts
DATAFILE 'C:\APP\ITSC\PRODUCT\18.0.0\ORADATA\XE\goodman01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;

-- 사용자 생성
-- 12C 이전방법으로 계정 생성
ALTER SESSION SET "_oracle_script" = true;

CREATE USER goodman
IDENTIFIED BY pcwk
DEFAULT TABLESPACE GOODMAN_TS
TEMPORARY TABLESPACE temp;

-- 권한부여
-- dba로 하면 엥간한 권한 다 주는거임, 지금은 아래걸로 일일히 준다
GRANT DBA TO goodman;
GRANT RESOURCE,
    CREATE SESSION,
    CREATE TABLE
TO GOODMAN;

ALTER USER goodman
DEFAULT TABLESPACE goodman_ts
QUOTA UNLIMITED ON goodman_ts;