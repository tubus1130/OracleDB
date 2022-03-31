-- DEPT2 테이블의 AREA 컬럼에 NON UNIQUE INDEX 생성
--CREATE INDEX idx_dept2_area
--ON dept2(area);

ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT /*+INDEX_DESC(t1 IDX_DEPT2_AREA) */ *
FROM dept2 t1
WHERE area > '0'
;

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST'));
