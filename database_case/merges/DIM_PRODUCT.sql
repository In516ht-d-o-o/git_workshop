MERGE INTO DIM_PRODUCT AS tgt
USING V_DIM_PRODUCT AS src
ON tgt.product_key = src.product_key

WHEN MATCHED THEN UPDATE SET
    tgt.product_name = src.product_name,
    tgt.category = src.category,
    tgt.unit_price = src.unit_price

WHEN NOT MATCHED THEN INSERT (
    product_key,
    product_name,
    category,
    unit_price
) VALUES (
    src.product_key,
    src.product_name,
    src.category,
    src.unit_price
);
