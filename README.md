# Descriptive analysis using SQL
Performing descriptive analysis using SQL codes.

**1. MEDIAN:**

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




**2. SQL_Report**

Overview: This SQL code generates a comprehensive report showcasing student names, grades, and marks. It adheres to specific criteria where students with grades greater than or equal to 8 have their actual names displayed, and students with grades lower than 8 are represented by NULL in the name column. The report is sorted in descending order based on grades, and within each grade, it further considers the alphabetical order of names (for grades 8 and above) or the ascending order of marks (for grades below 8).

SQL Code Explanation: The code utilizes a combination of CASE statements, JOIN operations, and the ORDER BY clause to achieve the desired result. It employs a UNION ALL to combine results for students with grades 8 and above and those with grades below 8. The WHERE clause filters students based on their grades, and the ORDER BY clause ensures the correct sorting order.


**3. Top_Competitors**

Overview: This SQL query is designed to assemble a leaderboard for a coding contest by identifying and showcasing hackers who have excelled across multiple challenges. The query retrieves the hacker_id and name of participants who have achieved full scores in more than one coding challenge. Leveraging a set of interconnected tables (hackers, submissions, challenges, and difficulty), the query intelligently links hackers to their submissions, challenges, and difficulty levels, filtering for those instances where the hacker's score matches the predefined full score. The results are then grouped, ensuring each hacker is listed only once, and the count of challenges is evaluated. The final output is ordered in descending order based on the total number of challenges with full scores, and in case of ties, ascending order by hacker_id.

Usage:
This SQL code is valuable for contest organizers seeking to recognize and highlight the top-performing hackers in a coding competition. By creating a leaderboard that showcases participants with consistent excellence across multiple challenges, organizers can acknowledge and celebrate the achievements of skilled individuals. This query provides a clear and organized representation of hackers who stand out for their ability to master various difficulty levels, contributing to a more engaging and competitive coding environment.

**4. Ollivander's Inventory**

Overview:
This SQL code calculates the minimum number of gold galleons needed to purchase each non-evil wand at Ollivander's based on high power and age. The code joins the wands and wands_property tables, filtering out evil wands (is_evil = 0). It utilizes a correlated subquery to find, for each wand, the minimum coins_needed among wands with the same power and age. The result is a list of wand details, including id, age, coins_needed, and power, sorted in descending order of power. In case of tied powers, the result is further sorted in descending order of age.

Usage:
This code is valuable in scenarios where one needs to determine the most cost-effective non-evil wands at Ollivander's, considering both their power and age. By identifying the minimum number of gold galleons required for each unique combination of power and age, the code provides insights into the pricing structure of wands. The result can be useful for individuals, like Ron, who are seeking to replace or upgrade their wands while optimizing for both power and age.

**5. Challenges**

Overview:
This SQL query is designed to rank hackers based on their contributions to challenge creation. It retrieves essential details such as hacker_id, name, and the count of challenges (c_count) created by each student. The query employs a combination of grouping, subqueries, and logical conditions to identify students with the maximum number of challenges and those with unique challenge counts. The results are then sorted by the total number of challenges in descending order and, in case of ties, by hacker ID.

**6. Contest Leaderboard**

This SQL query retrieves information about hackers and their total scores based on the maximum scores achieved in challenges. It utilizes a subquery to find the maximum score for each challenge that each hacker has submitted. The results are then grouped by hacker, and the total score is calculated by summing up these maximum scores. The query includes a HAVING clause to filter out hackers with a total score less than or equal to 0. The final output is ordered by total score in descending order, with ties broken by ascending hacker ID.

Usage:

This query is designed for a scenario where hackers submit solutions to challenges, and the goal is to calculate their total scores.
The results can be useful for identifying top-performing hackers based on their total scores.

**7. Draw the Triangle**

Overview:
This SQL code utilizes recursive Common Table Expressions (CTEs) to generate and print patterns of asterisks in SQL Server. The specific pattern generated is denoted as P(R), where R represents the number of rows in the pattern.

Usage:

The primary purpose of this code is to demonstrate how to use SQL recursive CTEs, particularly in the context of printing patterns. The provided example generates and prints the pattern P(20) as an illustration.

Code Structure:

The SQL code is organized in a single file.
A recursive CTE named PatternCTE is used to generate a sequence of numbers from 20 to 1.
The REPLICATE function is employed to print the pattern, repeating the string '* ' based on the current row number.
