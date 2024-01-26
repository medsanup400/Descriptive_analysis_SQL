```sql
WITH OrderedLatitudes AS (
  SELECT LAT_N,
         ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,
         COUNT(*)  OVER() AS total_rows
  FROM STATION)

SELECT CAST(AVG(LAT_N * 1.0) AS DECIMAL(10,4)) AS median_latitude
FROM OrderedLatitudes
WHERE row_num IN ((total_rows + 1) / 2, (total_rows + 2) / 2);


