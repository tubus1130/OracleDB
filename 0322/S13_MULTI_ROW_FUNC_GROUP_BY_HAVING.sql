SELECT
    deptno,
    job,
    AVG(NVL(sal, 0)) AS "AVG"
FROM
    emp
WHERE
    sal <= 3000
GROUP BY
    deptno, job
HAVING
    AVG(NVL(sal, 0)) >= 2000
ORDER BY
    1,2;