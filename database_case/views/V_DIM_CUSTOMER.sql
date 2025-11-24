CREATE OR REPLACE VIEW V_DIM_CUSTOMER AS
SELECT
    ABS(HASH(customer_name)) AS customer_key,
    customer_name,
    city,
    country
FROM STG_CUSTOMER;
