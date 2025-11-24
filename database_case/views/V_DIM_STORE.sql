CREATE OR REPLACE VIEW V_DIM_STORE AS
SELECT
    ABS(HASH(store_name)) AS store_key,
    store_name,
    city,
    country
FROM STG_STORE;
