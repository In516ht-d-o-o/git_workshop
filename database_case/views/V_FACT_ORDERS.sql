CREATE OR REPLACE VIEW V_FACT_ORDERS AS
SELECT
    o.order_id,
    TO_NUMBER(TO_CHAR(o.order_date, 'YYYYMMDD')) AS date_key,
    ABS(HASH(o.product_name)) AS product_key,
    ABS(HASH(o.customer_name)) AS customer_key,
    ABS(HASH(o.store_name)) AS store_key,
    o.order_amount
FROM STG_ORDERS o;
