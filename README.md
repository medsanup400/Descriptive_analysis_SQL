# Descriptive_analysis_using_SQL
Performing descriptive analysis using SQL codes.

**MEDIAN:**

If there are 5 rows (an odd number). The expressions become:

(5 + 1) / 2 = 3: This is the middle row number.
(5 + 2) / 2 = 3.5: This is the upper middle row number.

So, the WHERE clause effectively becomes WHERE row_num IN (3, 3.5). Since row numbers are typically integers, the .5 is ignored, and it's effectively WHERE row_num IN (3). Therefore, the query calculates the median by averaging the latitude values of the row with row_num = 3.


If there are 6 rows in the example table, the total number of rows (total_rows) would be 6, an even number.

Now, the expressions in the IN clause would be:

(6 + 1) / 2 = 3.5: This is the lower middle row number.
(6 + 2) / 2 = 4: This is the upper middle row number.

So, the WHERE clause effectively becomes WHERE row_num IN (3.5, 4). However, since row numbers are typically integers, the .5 is ignored, and it's effectively WHERE row_num IN (3, 4).

This means the query will select rows with row_num equal to 3 and 4. The median latitude would then be the average of the latitude values of these two rows.
