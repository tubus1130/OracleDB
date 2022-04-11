CREATE OR REPLACE FUNCTION func_aftertax
(
    sal IN NUMBER
)
RETURN NUMBER
IS
    tax NUMBER := 0.05;
BEGIN
    RETURN ROUND(sal - (sal * tax));
END func_aftertax;
/

-- Function FUNC_AFTERTAX이(가) 컴파일되었습니다.