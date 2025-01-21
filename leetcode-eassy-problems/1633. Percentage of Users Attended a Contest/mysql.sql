-- Write your MySQL query statement below
-- select r.contest_id, round(count(user_id) / (select count(*) from Users) * 100, 2) as percentage 
-- from Register r
-- group by r.contest_id
-- order by percentage DESC

SELECT r.contest_id, 
       ROUND(COUNT(DISTINCT r.user_id) / (SELECT COUNT(*) FROM Users) * 100, 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
