-- emp���̺��� dept���̺��� ��ȸ�Ͽ� �Ʒ��� ���� ���

-- ORACLE JOIN
SELECT t1.empno,
    t1.ename,
    t2.dname
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
;

-- ANSI JOIN
SELECT empno,
    ename,
    dname
FROM emp t1 INNER JOIN dept t2
ON t1.deptno = t2.deptno
;
