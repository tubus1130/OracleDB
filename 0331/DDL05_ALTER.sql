-- CTAS
CREATE TABLE dept6
AS (
    SELECT dcode, dname
    FROM dept2
    WHERE dcode IN (1000, 1001, 1002)
)
;

SELECT * FROM dept6;

-- �÷� �߰�
ALTER TABLE dept6
    ADD (locations VARCHAR2(10))
;

-- ����Ʈ �Ӽ����� �÷� �߰�
ALTER TABLE dept6
    ADD (location2 VARCHAR2(10) DEFAULT 'SEOUL')
;