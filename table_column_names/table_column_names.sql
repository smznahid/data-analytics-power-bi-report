-- show table names
SELECT table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
    AND table_schema = 'public';

-- show column names for all tables
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'orders'
    AND table_schema = 'public';

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'dim_customer'
    AND table_schema = 'public';

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'country_region'
    AND table_schema = 'public';

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'dim_date'
    AND table_schema = 'public';

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'dim_product'
    AND table_schema = 'public';

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'forview'
    AND table_schema = 'public';

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'dim_store'
    AND table_schema = 'public';

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'forquerying2'
    AND table_schema = 'public';