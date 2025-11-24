MERGE INTO DIM_DATE AS tgt
USING V_DIM_DATE AS src
ON tgt.date_key = src.date_key

WHEN MATCHED THEN UPDATE SET
    tgt.full_date = src.full_date,
    tgt.year = src.year,
    tgt.month = src.month,
    tgt.day = src.day

WHEN NOT MATCHED THEN INSERT (
    date_key,
    full_date,
    year,
    month,
    day
) VALUES (
    src.date_key,
    src.full_date,
    src.year,
    src.month,
    src.day
);
