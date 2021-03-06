-- 기존 데이터가 중복되어 데이터 UPDATE
UPDATE TABLE_UNIQUE
SET TEL = '010-1235-5678'
WHERE LOGIN_ID = 'TEST_ID_01';

UPDATE TABLE_UNIQUE
SET TEL = '010-1236-5678'
WHERE LOGIN_ID = 'TEST_ID_02';

ALTER TABLE TABLE_UNIQUE
MODIFY (tel UNIQUE);

SELECT * FROM TABLE_UNIQUE;

-- UNIQUE 컬럼에 NULL로 UPDATE
-- UNIQUE에도 NULL은 여러개 일수 있다
UPDATE TABLE_UNIQUE
SET TEL = NULL;

SELECT * FROM TABLE_UNIQUE;