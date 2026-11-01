-- =========================================
-- 1. PEMBUATAN SCHEMA
-- =========================================

CREATE SCHEMA IF NOT EXISTS salam;

-- =========================================
-- 2. PEMBUATAN TABEL MAHASISWA
-- =========================================

CREATE TABLE IF NOT EXISTS salam.mahasiswa (
    nim VARCHAR(15) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    semester INTEGER CHECK (semester >= 1 AND semester <= 14),
    prodi VARCHAR(100) NOT NULL
);