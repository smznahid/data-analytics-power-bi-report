-- looking at the staff numbers in the table
SELECT staff_numbers,
      country_code
FROM dim_store



-- total number of staff in uk stores
SELECT
    SUM(staff_numbers) AS staff_count
FROM
    dim_store
WHERE
    country_code = 'GB';