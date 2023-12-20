-- find the top month, in this case august for the total revenue.


SELECT
    DATE_TRUNC('MONTH', o.order_date::DATE) AS month,
    SUM(o.product_quantity * p.sale_price) AS total_revenue
FROM
    orders o
JOIN
    dim_product p ON o.product_code = p.product_code
WHERE
    EXTRACT(YEAR FROM o.order_date::DATE) = 2022
GROUP BY
    DATE_TRUNC('MONTH', o.order_date::DATE)
ORDER BY
    total_revenue DESC
LIMIT 1;
