-- emp 사원들에 이름, 월급, 연봉, 수당
-- 연봉 : 월급 * 12 + 수당
SELECT
    ename,
    sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+comm AS annual_sal,
    sal,
    comm
FROM
    emp;