MERGE INTO DIM_CUSTOMER AS tgt
USING V_DIM_CUSTOMER AS src
ON tgt.customer_key = src.customer_key

WHEN MATCHED THEN UPDATE SET
    tgt.customer_name = src.customer_name,
    tgt.city = src.city,
    tgt.country = src.country

WHEN NOT MATCHED THEN INSERT (
    customer_key,
    customer_name,
    city,
    country
) VALUES (
    src.customer_key,
    src.customer_name,
    src.city,
    src.country,
    src.country
);
