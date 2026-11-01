-- =========================================
-- PEMBUATAN USER DATABASE
-- =========================================

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT FROM pg_roles WHERE rolname = 'backend_dev'
    ) THEN
        CREATE USER backend_dev WITH PASSWORD 'backend123';
    END IF;

    IF NOT EXISTS (
        SELECT FROM pg_roles WHERE rolname = 'bi_dev'
    ) THEN
        CREATE USER bi_dev WITH PASSWORD 'bi123';
    END IF;

    IF NOT EXISTS (
        SELECT FROM pg_roles WHERE rolname = 'data_engineer'
    ) THEN
        CREATE USER data_engineer WITH PASSWORD 'data123';
    END IF;
END
$$;