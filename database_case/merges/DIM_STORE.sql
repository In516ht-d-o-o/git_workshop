MERGE INTO DIM_STORE AS tgt
USING V_DIM_STORE AS src
ON tgt.store_key = src.store_key

WHEN MATCHED THEN UPDATE SET
    tgt.store_name = src.store_name,
    tgt.city = src.city,
    tgt.country = src.country

WHEN NOT MATCHED THEN INSERT (
    store_key,
    store_name,
    city,
    country
) VALUES (
    src.store_key,
    src.store_name,
    src.city,
    src.country
);
