-- INSERT
-- �μ���ȣ : 50
-- �μ��� : 'DATABASE'
-- ���� : 'SEOUL'

INSERT INTO dept_temp(deptno, dname, loc)
    VALUES(50, 'DATABASE', 'SEOUL')
;
COMMIT;
SELECT * FROM dept_temp;

-- ���� COMMIT ���� ������ �͵��� �� ������!
--ROLLBACK;