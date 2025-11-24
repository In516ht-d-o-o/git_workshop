MERGE INTO FACT_ORDERS AS tgt
USING V_FACT_ORDERS AS src
ON tgt.order_id = src.order_id

WHEN MATCHED THEN UPDATE SET
    tgt.date_key = src.date_key,
    tgt.product_key = src.product_key,
    tgt.customer_key = src.customer_key,
    tgt.store_key = src.store_key,
    tgt.order_amount = src.order_amount

WHEN NOT MATCHED THEN INSERT (
    order_id,
    date_key,
    product_key,
    customer_key,
    store_key,
    order_amount
) VALUES (
    src.order_id,
    src.date_key,
    src.product_key,
    src.customer_key,
    src.store_key,
    src.order_amount
);
