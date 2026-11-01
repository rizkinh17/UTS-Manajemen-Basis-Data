-- =========================================
-- PERMISSION BACKEND DEVELOPER
-- CRUD PADA TABEL
-- =========================================

GRANT CONNECT ON DATABASE postgres TO backend_dev;
GRANT USAGE ON SCHEMA salam TO backend_dev;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA salam
TO backend_dev;


-- =========================================
-- PERMISSION BUSINESS INTELLIGENCE
-- READ ONLY
-- =========================================

GRANT CONNECT ON DATABASE postgres TO bi_dev;
GRANT USAGE ON SCHEMA salam TO bi_dev;

GRANT SELECT
ON ALL TABLES IN SCHEMA salam
TO bi_dev;


-- =========================================
-- PERMISSION DATA ENGINEER
-- =========================================

GRANT CONNECT, CREATE ON DATABASE postgres
TO data_engineer;

GRANT USAGE, CREATE ON SCHEMA salam
TO data_engineer;

ALTER SCHEMA salam OWNER TO data_engineer;

ALTER TABLE salam.mahasiswa OWNER TO data_engineer;