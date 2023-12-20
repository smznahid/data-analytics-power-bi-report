-- finding top german store in 2022 by revenue.
SELECT
    s.store_type,
    SUM(o.product_quantity * p.sale_price) AS total_revenue
FROM
    orders o
JOIN
    dim_product p ON o.product_code = p.product_code
JOIN
    dim_store s ON o.store_code = s.store_code
WHERE
    s.country = 'Germany'
    AND EXTRACT(YEAR FROM o.order_date::DATE) = 2022
GROUP BY
    s.store_type
ORDER BY
    total_revenue DESC

LIMIT 1;