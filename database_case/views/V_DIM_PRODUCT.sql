CREATE OR REPLACE VIEW V_DIM_PRODUCT AS
SELECT
    ABS(HASH(product_name)) AS product_key,
    product_name,
    category,
    unit_price
FROM STG_PRODUCT;
