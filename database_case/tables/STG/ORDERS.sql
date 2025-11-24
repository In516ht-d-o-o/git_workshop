CREATE OR REPLACE TABLE STG_ORDERS AS
SELECT
    TO_NUMBER(order_id) AS order_id,
    TO_DATE(order_date) AS order_date,
    product_name,
    customer_name,
    store_name,
    TO_DECIMAL(order_amount) AS order_amount
FROM RAW_ORDERS;