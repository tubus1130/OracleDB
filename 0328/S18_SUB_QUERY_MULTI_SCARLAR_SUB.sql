-- 2�� �̻��� �÷��� ��ȸ�� ��� -> ����
SELECT t3.no,
    t3.name,
    (SELECT dname, deptno
    FROM t4
    WHERE t3.deptno = t4.deptno) AS DNAME
FROM t3
;