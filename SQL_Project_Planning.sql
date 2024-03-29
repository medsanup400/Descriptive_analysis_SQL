WITH ProjectInfo AS (
    SELECT A.START_DATE, MIN(B.END_DATE) AS X
    FROM
        (SELECT START_DATE FROM PROJECTS WHERE START_DATE NOT IN (SELECT END_DATE FROM PROJECTS)) A
    JOIN
        (SELECT END_DATE FROM PROJECTS WHERE END_DATE NOT IN (SELECT START_DATE FROM PROJECTS)) B
    ON A.START_DATE < B.END_DATE
    GROUP BY A.START_DATE
)

SELECT START_DATE, X
FROM ProjectInfo
ORDER BY DATEDIFF(DAY, START_DATE, X), START_DATE;
