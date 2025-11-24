CREATE OR REPLACE TABLE FACT_ORDERS (
    order_id INT PRIMARY KEY,
    date_key INT REFERENCES DIM_DATE(date_key),
    product_key INT REFERENCES DIM_PRODUCT(product_key),
    customer_key INT REFERENCES DIM_CUSTOMER(customer_key),
    store_key INT REFERENCES DIM_STORE(store_key),
    order_amount DECIMAL(12,2)
);
