-- OR연산자를 사용하여 여러개 조건을 만족하는 데이터 출력
SELECT
    empno,
    ename,
    deptno
FROM
    emp
WHERE
    job IN ('MANAGER', 'SALESMAN', 'CLERK');