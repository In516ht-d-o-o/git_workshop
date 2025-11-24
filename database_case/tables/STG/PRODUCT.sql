CREATE OR REPLACE TABLE STG_PRODUCT AS
SELECT
    product_name,
    category,
    TO_DECIMAL(unit_price) AS unit_price
FROM RAW_PRODUCT;