CREATE OR REPLACE TABLE STG_DATE AS
SELECT
    TO_DATE(full_date) AS full_date,
    TO_NUMBER(year) AS year,
    TO_NUMBER(month) AS month,
    TO_NUMBER(day) AS day
FROM RAW_DATE;
