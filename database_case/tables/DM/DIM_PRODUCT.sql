CREATE OR REPLACE TABLE DIM_PRODUCT (
    product_key INT PRIMARY KEY,
    product_name VARCHAR,
    category VARCHAR,
    unit_price DECIMAL(10,2)
);
