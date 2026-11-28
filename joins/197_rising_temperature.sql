-- Problem: Rising Temperature
-- Platform: LeetCode #197
-- Link: https://leetcode.com/problems/rising-temperature/
-- Difficulty: Easy
-- Topic: Joins
--
-- Approach: Join the table using Join on the basis of date where diff 
-- should be 1 Day and the date which greater has higher temperature than print it.


SELECT w2.id as Id
FROM weather w1
LEFT JOIN weather w2
ON DATE_ADD(w1.recordDate,INTERVAL 1 DAY)=w2.recordDate
WHERE w2.temperature>w1.temperature;