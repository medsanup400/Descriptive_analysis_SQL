SELECT
    h.hacker_id,
    h.name,
    COUNT(c.challenge_id) AS c_count
FROM
    hackers h
JOIN
    challenges c ON h.hacker_id = c.hacker_id
GROUP BY
    h.hacker_id, h.name
    
--only include the student who has max number of challenges created.
HAVING
    COUNT(c.challenge_id) = (
        SELECT TOP 1 COUNT(challenge_id)
        FROM hackers h1
        JOIN challenges c1 ON h1.hacker_id = c1.hacker_id
        GROUP BY h1.hacker_id
        ORDER BY COUNT(c1.challenge_id) DESC
    )
-- exclude the students who has count(challenges) and other also have same same count(challenges). that means find out students who have count(challenges) to be only 1.
    OR COUNT(c.challenge_id) IN (
        SELECT c2_challenge_count
        FROM (
            SELECT COUNT(c2.challenge_id) as c2_challenge_count
            FROM hackers h2
            JOIN challenges c2 ON h2.hacker_id = c2.hacker_id
            GROUP BY c2.hacker_id
        ) subquery
        GROUP BY subquery.c2_challenge_count
        HAVING COUNT(subquery.c2_challenge_count) = 1
    )
ORDER BY
    c_count DESC, h.hacker_id ASC;
