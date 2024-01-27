SELECT
    h.hacker_id,
    h.name,
    SUM(s2.maxscore) AS total_score
FROM
    hackers h
JOIN (
    SELECT
        s1.hacker_id,
        s1.challenge_id,
        MAX(s1.score) AS maxscore
    FROM
        submissions s1
    GROUP BY
        s1.hacker_id, s1.challenge_id
) s2 ON h.hacker_id = s2.hacker_id
GROUP BY
    h.hacker_id, h.name
HAVING
    SUM(s2.maxscore) > 0 
ORDER BY
    total_score DESC, h.hacker_id;
