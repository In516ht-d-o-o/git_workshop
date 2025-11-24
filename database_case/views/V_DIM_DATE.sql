CREATE OR REPLACE VIEW V_DIM_DATE AS
SELECT
    TO_NUMBER(TO_CHAR(full_date, 'YYYYMMDD')) AS date_key,
    full_date,
    year,
    month,
    day
FROM STG_DATE;
