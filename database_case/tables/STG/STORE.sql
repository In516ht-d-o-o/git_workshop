CREATE OR REPLACE TABLE STG_STORE AS
SELECT
    store_name,
    city,
    country
FROM RAW_STORE;